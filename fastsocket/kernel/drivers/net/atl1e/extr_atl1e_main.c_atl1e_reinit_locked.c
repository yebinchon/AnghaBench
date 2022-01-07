
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_adapter {int flags; } ;


 int WARN_ON (int ) ;
 int __AT_RESETTING ;
 int atl1e_down (struct atl1e_adapter*) ;
 int atl1e_up (struct atl1e_adapter*) ;
 int clear_bit (int ,int *) ;
 int in_interrupt () ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void atl1e_reinit_locked(struct atl1e_adapter *adapter)
{

 WARN_ON(in_interrupt());
 while (test_and_set_bit(__AT_RESETTING, &adapter->flags))
  msleep(1);
 atl1e_down(adapter);
 atl1e_up(adapter);
 clear_bit(__AT_RESETTING, &adapter->flags);
}
