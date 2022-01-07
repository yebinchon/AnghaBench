
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_hardware_context {int fw_hal_version; int op_mode; } ;
struct qlcnic_adapter {int state; int * nic_ops; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_SRIOV_VF_FUNC ;
 int __QLCNIC_SRIOV_ENABLE ;
 int dev_info (int *,char*,int ) ;
 int qlcnic_sriov_vf_ops ;
 int set_bit (int ,int *) ;

void qlcnic_sriov_vf_set_ops(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 ahw->op_mode = QLCNIC_SRIOV_VF_FUNC;
 dev_info(&adapter->pdev->dev,
   "HAL Version: %d Non Privileged SRIOV function\n",
   ahw->fw_hal_version);
 adapter->nic_ops = &qlcnic_sriov_vf_ops;
 set_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state);
 return;
}
