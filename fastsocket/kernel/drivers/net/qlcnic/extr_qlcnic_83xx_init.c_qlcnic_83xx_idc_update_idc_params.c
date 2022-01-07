
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ delay_reset; scalar_t__ collect_dump; scalar_t__ err_code; int delay; scalar_t__ quiesce_req; int status; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; scalar_t__ reset_context; } ;
struct qlcnic_adapter {int state; scalar_t__ tx_timeo_cnt; struct qlcnic_hardware_context* ahw; } ;


 int QLC_83XX_IDC_FW_POLL_DELAY ;
 int QLC_83XX_MBX_READY ;
 int QLC_83XX_MODULE_LOADED ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int qlcnic_83xx_idc_update_audit_reg (struct qlcnic_adapter*,int ,int) ;
 int qlcnic_83xx_idc_update_drv_presence_reg (struct qlcnic_adapter*,int,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_83xx_idc_update_idc_params(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 qlcnic_83xx_idc_update_drv_presence_reg(adapter, 1, 1);
 set_bit(QLC_83XX_MBX_READY, &adapter->ahw->idc.status);
 qlcnic_83xx_idc_update_audit_reg(adapter, 0, 1);
 set_bit(QLC_83XX_MODULE_LOADED, &adapter->ahw->idc.status);

 ahw->idc.quiesce_req = 0;
 ahw->idc.delay = QLC_83XX_IDC_FW_POLL_DELAY;
 ahw->idc.err_code = 0;
 ahw->idc.collect_dump = 0;
 ahw->reset_context = 0;
 adapter->tx_timeo_cnt = 0;
 ahw->idc.delay_reset = 0;

 clear_bit(__QLCNIC_RESETTING, &adapter->state);
}
