
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_adapter {int link_chg_task; int reset_task; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static void atl1e_cancel_work(struct atl1e_adapter *adapter)
{
 cancel_work_sync(&adapter->reset_task);
 cancel_work_sync(&adapter->link_chg_task);
}
