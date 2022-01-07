
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int flags; int state; int flags2; struct ixgbe_hw hw; } ;


 int IXGBE_EICR ;
 int IXGBE_EICR_GPI_SDP1 ;
 int IXGBE_EICR_GPI_SDP2 ;
 int IXGBE_FLAG2_SFP_NEEDS_RESET ;
 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int __IXGBE_DOWN ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_check_sfp_event(struct ixgbe_adapter *adapter, u32 eicr)
{
 struct ixgbe_hw *hw = &adapter->hw;

 if (eicr & IXGBE_EICR_GPI_SDP2) {

  IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP2);
  if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
   adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
   ixgbe_service_event_schedule(adapter);
  }
 }

 if (eicr & IXGBE_EICR_GPI_SDP1) {

  IXGBE_WRITE_REG(hw, IXGBE_EICR, IXGBE_EICR_GPI_SDP1);
  if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
   adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
   ixgbe_service_event_schedule(adapter);
  }
 }
}
