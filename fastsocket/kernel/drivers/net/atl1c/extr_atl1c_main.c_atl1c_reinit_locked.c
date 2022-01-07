
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_adapter {int flags; } ;


 int WARN_ON (int ) ;
 int __AT_RESETTING ;
 int atl1c_down (struct atl1c_adapter*) ;
 int atl1c_up (struct atl1c_adapter*) ;
 int clear_bit (int ,int *) ;
 int in_interrupt () ;

void atl1c_reinit_locked(struct atl1c_adapter *adapter)
{
 WARN_ON(in_interrupt());
 atl1c_down(adapter);
 atl1c_up(adapter);
 clear_bit(__AT_RESETTING, &adapter->flags);
}
