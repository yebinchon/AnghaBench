
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {int state; TYPE_2__* pdev; TYPE_1__* ahw; } ;
struct qlc_83xx_idc {scalar_t__ prev_state; int status; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct qlc_83xx_idc idc; } ;


 int EIO ;
 scalar_t__ QLC_83XX_IDC_DEV_READY ;
 int QLC_83XX_MODULE_LOADED ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 int qlcnic_sriov_vf_detach (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_sriov_vf_idc_failed_state(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_idc *idc = &adapter->ahw->idc;

 dev_err(&adapter->pdev->dev, "Device is in failed state\n");
 if (idc->prev_state == QLC_83XX_IDC_DEV_READY)
  qlcnic_sriov_vf_detach(adapter);

 clear_bit(QLC_83XX_MODULE_LOADED, &idc->status);
 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return -EIO;
}
