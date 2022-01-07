
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int flags2; int tx_timeout_count; int netdev; int state; } ;


 int IXGBE_FLAG2_RESET_REQUESTED ;
 int __IXGBE_DOWN ;
 int __IXGBE_RESETTING ;
 int ixgbe_dump (struct ixgbe_adapter*) ;
 int ixgbe_reinit_locked (struct ixgbe_adapter*) ;
 int netdev_err (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
{
 if (!(adapter->flags2 & IXGBE_FLAG2_RESET_REQUESTED))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_RESET_REQUESTED;


 if (test_bit(__IXGBE_DOWN, &adapter->state) ||
     test_bit(__IXGBE_RESETTING, &adapter->state))
  return;

 ixgbe_dump(adapter);
 netdev_err(adapter->netdev, "Reset adapter\n");
 adapter->tx_timeout_count++;

 ixgbe_reinit_locked(adapter);
}
