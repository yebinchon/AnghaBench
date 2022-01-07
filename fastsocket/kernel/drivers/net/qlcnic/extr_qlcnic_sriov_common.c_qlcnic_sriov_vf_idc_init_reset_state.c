
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {scalar_t__ reset_ctx_cnt; scalar_t__ tx_timeo_cnt; int state; TYPE_1__* pdev; TYPE_2__* ahw; } ;
struct qlc_83xx_idc {scalar_t__ prev_state; int status; } ;
struct TYPE_4__ {int pci_func; struct qlc_83xx_idc idc; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ QLC_83XX_IDC_DEV_READY ;
 int QLC_83XX_MBX_READY ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int ) ;
 int qlcnic_sriov_vf_detach (struct qlcnic_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_sriov_vf_idc_init_reset_state(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_idc *idc = &adapter->ahw->idc;
 u8 func = adapter->ahw->pci_func;

 if (idc->prev_state == QLC_83XX_IDC_DEV_READY) {
  dev_err(&adapter->pdev->dev,
   "Firmware hang detected by VF 0x%x\n", func);
  set_bit(__QLCNIC_RESETTING, &adapter->state);
  adapter->tx_timeo_cnt = 0;
  adapter->reset_ctx_cnt = 0;
  clear_bit(QLC_83XX_MBX_READY, &idc->status);
  qlcnic_sriov_vf_detach(adapter);
 }
 return 0;
}
