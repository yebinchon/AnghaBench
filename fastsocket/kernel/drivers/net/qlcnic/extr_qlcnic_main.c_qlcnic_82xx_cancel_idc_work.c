
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int fw_work; int state; } ;


 int __QLCNIC_RESETTING ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void qlcnic_82xx_cancel_idc_work(struct qlcnic_adapter *adapter)
{
 while (test_and_set_bit(__QLCNIC_RESETTING, &adapter->state))
  usleep_range(10000, 11000);

 cancel_delayed_work_sync(&adapter->fw_work);
}
