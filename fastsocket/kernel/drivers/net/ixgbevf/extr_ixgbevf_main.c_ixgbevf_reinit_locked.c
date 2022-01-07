
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int state; } ;


 int WARN_ON (int ) ;
 int __IXGBEVF_RESETTING ;
 int clear_bit (int ,int *) ;
 int in_interrupt () ;
 int ixgbevf_down (struct ixgbevf_adapter*) ;
 int ixgbevf_up (struct ixgbevf_adapter*) ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void ixgbevf_reinit_locked(struct ixgbevf_adapter *adapter)
{
 WARN_ON(in_interrupt());

 while (test_and_set_bit(__IXGBEVF_RESETTING, &adapter->state))
  msleep(1);

 ixgbevf_down(adapter);
 ixgbevf_up(adapter);

 clear_bit(__IXGBEVF_RESETTING, &adapter->state);
}
