
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int flags; } ;


 int ASSERT_RTNL () ;
 int WARN_ON (int ) ;
 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 int e1000_down (struct e1000_adapter*) ;
 int e1000_up (struct e1000_adapter*) ;
 int in_interrupt () ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void e1000_reinit_locked(struct e1000_adapter *adapter)
{

 ASSERT_RTNL();
 WARN_ON(in_interrupt());
 while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
  msleep(1);
 e1000_down(adapter);
 e1000_up(adapter);
 clear_bit(__E1000_RESETTING, &adapter->flags);
}
