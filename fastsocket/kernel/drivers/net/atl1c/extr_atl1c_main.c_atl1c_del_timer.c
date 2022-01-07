
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_adapter {int phy_config_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void atl1c_del_timer(struct atl1c_adapter *adapter)
{
 del_timer_sync(&adapter->phy_config_timer);
}
