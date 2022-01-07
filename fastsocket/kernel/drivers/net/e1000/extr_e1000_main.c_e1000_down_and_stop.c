
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int fifo_stall_task; int phy_info_task; int watchdog_task; int reset_task; int flags; } ;


 int __E1000_DOWN ;
 int __E1000_RESETTING ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void e1000_down_and_stop(struct e1000_adapter *adapter)
{
 set_bit(__E1000_DOWN, &adapter->flags);


 if (!test_bit(__E1000_RESETTING, &adapter->flags))
  cancel_work_sync(&adapter->reset_task);

 cancel_delayed_work_sync(&adapter->watchdog_task);
 cancel_delayed_work_sync(&adapter->phy_info_task);
 cancel_delayed_work_sync(&adapter->fifo_stall_task);
}
