
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct TYPE_3__ {int shift; } ;
struct ixgbe_adapter {int flags2; int tc; TYPE_1__ cc; struct ixgbe_hw hw; } ;


 int IXGBE_CLKTIMH ;
 int IXGBE_CLKTIML ;
 int IXGBE_ESDP ;
 int IXGBE_ESDP_SDP0_DIR ;
 int IXGBE_ESDP_SDP0_NATIVE ;
 int IXGBE_FLAG2_PTP_PPS_ENABLED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SYSTIMH ;
 int IXGBE_SYSTIML ;
 int IXGBE_TRGTTIMH0 ;
 int IXGBE_TRGTTIML0 ;
 int IXGBE_TSAUXC ;
 int IXGBE_TSAUXC_EN_CLK ;
 int IXGBE_TSAUXC_SDP0_INT ;
 int IXGBE_TSAUXC_SYNCLK ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int NSECS_PER_SEC ;
 int div_u64_rem (int,int,int*) ;
 scalar_t__ ixgbe_mac_X540 ;
 int timecounter_cyc2time (int *,int) ;

__attribute__((used)) static void ixgbe_ptp_setup_sdp(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int shift = adapter->cc.shift;
 u32 esdp, tsauxc, clktiml, clktimh, trgttiml, trgttimh, rem;
 u64 ns = 0, clock_edge = 0;

 if ((adapter->flags2 & IXGBE_FLAG2_PTP_PPS_ENABLED) &&
     (hw->mac.type == ixgbe_mac_X540)) {


  IXGBE_WRITE_REG(hw, IXGBE_TSAUXC, 0x0);
  IXGBE_WRITE_FLUSH(hw);

  esdp = IXGBE_READ_REG(hw, IXGBE_ESDP);





  esdp |= (IXGBE_ESDP_SDP0_DIR |
    IXGBE_ESDP_SDP0_NATIVE);





  tsauxc = (IXGBE_TSAUXC_EN_CLK |
     IXGBE_TSAUXC_SYNCLK |
     IXGBE_TSAUXC_SDP0_INT);


  clktiml = (u32)(NSECS_PER_SEC << shift);
  clktimh = (u32)((NSECS_PER_SEC << shift) >> 32);






  clock_edge |= (u64)IXGBE_READ_REG(hw, IXGBE_SYSTIML);
  clock_edge |= (u64)IXGBE_READ_REG(hw, IXGBE_SYSTIMH) << 32;
  ns = timecounter_cyc2time(&adapter->tc, clock_edge);

  div_u64_rem(ns, NSECS_PER_SEC, &rem);
  clock_edge += ((NSECS_PER_SEC - (u64)rem) << shift);


  trgttiml = (u32)clock_edge;
  trgttimh = (u32)(clock_edge >> 32);

  IXGBE_WRITE_REG(hw, IXGBE_CLKTIML, clktiml);
  IXGBE_WRITE_REG(hw, IXGBE_CLKTIMH, clktimh);
  IXGBE_WRITE_REG(hw, IXGBE_TRGTTIML0, trgttiml);
  IXGBE_WRITE_REG(hw, IXGBE_TRGTTIMH0, trgttimh);

  IXGBE_WRITE_REG(hw, IXGBE_ESDP, esdp);
  IXGBE_WRITE_REG(hw, IXGBE_TSAUXC, tsauxc);
 } else {
  IXGBE_WRITE_REG(hw, IXGBE_TSAUXC, 0x0);
 }

 IXGBE_WRITE_FLUSH(hw);
}
