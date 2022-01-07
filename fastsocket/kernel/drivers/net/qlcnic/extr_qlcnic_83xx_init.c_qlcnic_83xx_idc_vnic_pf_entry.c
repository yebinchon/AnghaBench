
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ vnic_state; scalar_t__ prev_state; int vnic_wait_limit; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; } ;
struct qlcnic_adapter {TYPE_2__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 scalar_t__ QLCNIC_DEV_NPAR_OPER ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 scalar_t__ QLC_83XX_IDC_DEV_UNKNOWN ;
 int QLC_83XX_VNIC_STATE ;
 int dev_info (int *,char*) ;
 int qlcnic_83xx_idc_enter_failed_state (struct qlcnic_adapter*,int) ;
 scalar_t__ qlcnic_83xx_idc_reattach_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_update_idc_params (struct qlcnic_adapter*) ;

int qlcnic_83xx_idc_vnic_pf_entry(struct qlcnic_adapter *adapter)
{
 u32 state;
 struct qlcnic_hardware_context *ahw = adapter->ahw;


 state = QLCRDX(adapter->ahw, QLC_83XX_VNIC_STATE);
 if (state != QLCNIC_DEV_NPAR_OPER) {
  if (!ahw->idc.vnic_wait_limit--) {
   qlcnic_83xx_idc_enter_failed_state(adapter, 1);
   return -EIO;
  }
  dev_info(&adapter->pdev->dev, "vNIC mode disabled\n");
  return -EIO;

 } else {

  if (ahw->idc.vnic_state != QLCNIC_DEV_NPAR_OPER) {
   qlcnic_83xx_idc_update_idc_params(adapter);



   if (ahw->idc.prev_state != QLC_83XX_IDC_DEV_UNKNOWN) {
    if (qlcnic_83xx_idc_reattach_driver(adapter))
     return -EIO;
   }
   adapter->ahw->idc.vnic_state = QLCNIC_DEV_NPAR_OPER;
   dev_info(&adapter->pdev->dev, "vNIC mode enabled\n");
  }
 }

 return 0;
}
