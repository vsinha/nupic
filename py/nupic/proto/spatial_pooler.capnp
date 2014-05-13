@0xaf55f2dcb92e4304;

struct SpatialPooler {
  seed @0 :Int32;
  numInputs @1 :UInt32;
  numColumns @2 :UInt32;
  columnDimensions @3 :List(UInt32);
  inputDimensions @4 :List(UInt32);
  potentialRadius @5 :UInt32;
  potentialPct @6 :Float32;
  globalInhibition @7 :Bool;
  numActiveColumnsPerInhArea @8 :UInt32;
  localAreaDensity @9 :Float32;
  stimulusThreshold @10 :UInt32;
  synPermInactiveDec @11 :Float32;
  synPermActiveInc @12 :Float32;
  synPermBelowStimulusInc @13 :Float32;
  synPermConnected @14 :Float32;
  minPctOverlapDutyCycles @15 :Float32;
  minPctActiveDutyCycles @16 :Float32;
  dutyCyclePeriod @17 :UInt16;
  maxBoost @18 :Float32;
  spVerbosity @19 :UInt8;

  synPermMin @20 :Float32;
  synPermMax @21 :Float32;
  synPermTrimThreshold @22 :Float32;
  updatePeriod @23 :UInt16;

  version @24 :UInt16;
  iterationNum @25 :UInt32;
  iterationLearnNum @26 :UInt32;

  # List length equals number of columns, elements are indices of input bits
  # in potential pool
  # For serialization only - sparse matrix is used during execution
  potentialPools @27 :List(UInt32);

  # List length equals number of columns, elements are SparseFloat instances with
  # an input bit index and the permanence value for all non-zero permanences.
  # For serialization only - sparse matrix is used during execution
  permanences @28 :List(SparseFloat);

  # Tie break float values for each column to break ties
  tieBreaker @29 :List(Float32);

  # For serialization only - sparse matrix is used during execution
  connectedSynapses @30 :List(SparseBool);

  connectedCounts @31 :List(UInt32);

  overlapDutyCycles @32 :List(Float32);
  activeDutyCycles @33 :List(Float32);
  minOverlapDutyCycles @34 :List(Float32);
  minActiveDutyCycles @35 :List(Float32);
  boostFactors @36 :List(Float32);

  inhibitionRadius @37 :UInt32;
}

struct SparseFloat {
  index @0 :UInt32;
  value @1 :Float32;
}

struct SparseBool {
  index @0 :UInt32;
  value @1 :Bool;
}
