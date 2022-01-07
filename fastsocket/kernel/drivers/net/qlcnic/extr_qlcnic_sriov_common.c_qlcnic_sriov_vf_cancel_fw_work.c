
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {int fw_work; int state; TYPE_2__* ahw; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ idc; } ;


 int QLC_83XX_MODULE_LOADED ;
 int __QLCNIC_RESETTING ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_sriov_vf_cancel_fw_work(struct qlcnic_adapter *adapter)
{
 while (test_and_set_bit(__QLCNIC_RESETTING, &adapter->state))
  msleep(20);

 clear_bit(QLC_83XX_MODULE_LOADED, &adapter->ahw->idc.status);
 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 cancel_delayed_work_sync(&adapter->fw_work);
}
