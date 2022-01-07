
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_adapter {int flags; int state; TYPE_1__* netdev; } ;
struct TYPE_2__ {int trans_start; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 int WARN_ON (int ) ;
 int __IXGBE_RESETTING ;
 int clear_bit (int ,int *) ;
 int in_interrupt () ;
 int ixgbe_down (struct ixgbe_adapter*) ;
 int ixgbe_up (struct ixgbe_adapter*) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
{
 WARN_ON(in_interrupt());

 adapter->netdev->trans_start = jiffies;

 while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
  usleep_range(1000, 2000);
 ixgbe_down(adapter);






 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  msleep(2000);
 ixgbe_up(adapter);
 clear_bit(__IXGBE_RESETTING, &adapter->state);
}
