
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int flags2; int state; } ;


 int IXGBE_FLAG2_RESET_REQUESTED ;
 int __IXGBE_DOWN ;
 int drv ;
 int e_warn (int ,char*) ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_tx_timeout_reset(struct ixgbe_adapter *adapter)
{


 if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
  adapter->flags2 |= IXGBE_FLAG2_RESET_REQUESTED;
  e_warn(drv, "initiating reset due to tx timeout\n");
  ixgbe_service_event_schedule(adapter);
 }
}
