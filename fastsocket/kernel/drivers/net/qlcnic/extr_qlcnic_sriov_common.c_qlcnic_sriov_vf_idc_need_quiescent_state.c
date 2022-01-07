
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {scalar_t__ reset_ctx_cnt; scalar_t__ tx_timeo_cnt; int state; TYPE_2__* pdev; TYPE_1__* ahw; } ;
struct qlc_83xx_idc {scalar_t__ prev_state; int status; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct qlc_83xx_idc idc; } ;


 scalar_t__ QLC_83XX_IDC_DEV_READY ;
 int QLC_83XX_MBX_READY ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*) ;
 int qlcnic_sriov_vf_detach (struct qlcnic_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
qlcnic_sriov_vf_idc_need_quiescent_state(struct qlcnic_adapter *adapter)
{
 struct qlc_83xx_idc *idc = &adapter->ahw->idc;

 dev_info(&adapter->pdev->dev, "Device is in quiescent state\n");
 if (idc->prev_state == QLC_83XX_IDC_DEV_READY) {
  set_bit(__QLCNIC_RESETTING, &adapter->state);
  adapter->tx_timeo_cnt = 0;
  adapter->reset_ctx_cnt = 0;
  clear_bit(QLC_83XX_MBX_READY, &idc->status);
  qlcnic_sriov_vf_detach(adapter);
 }

 return 0;
}
