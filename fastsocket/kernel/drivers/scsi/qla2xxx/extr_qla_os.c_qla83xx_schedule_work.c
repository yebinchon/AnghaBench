
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nic_core_reset_hdlr_active; } ;
struct qla_hw_data {int nic_core_unrecoverable; int dpc_hp_wq; int idc_state_handler; int nic_core_reset; TYPE_1__ flags; int idc_aen; int dpc_lp_wq; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;






 int ql_dbg (int ,TYPE_2__*,int,char*) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_2__*,int,char*,int) ;
 int ql_log_warn ;
 int queue_work (int ,int *) ;

void
qla83xx_schedule_work(scsi_qla_host_t *base_vha, int work_code)
{
 struct qla_hw_data *ha = base_vha->hw;

 switch (work_code) {
 case 131:
  if (ha->dpc_lp_wq)
   queue_work(ha->dpc_lp_wq, &ha->idc_aen);
  break;

 case 129:
  if (!ha->flags.nic_core_reset_hdlr_active) {
   if (ha->dpc_hp_wq)
    queue_work(ha->dpc_hp_wq, &ha->nic_core_reset);
  } else
   ql_dbg(ql_dbg_p3p, base_vha, 0xb05e,
       "NIC Core reset is already active. Skip "
       "scheduling it again.\n");
  break;
 case 130:
  if (ha->dpc_hp_wq)
   queue_work(ha->dpc_hp_wq, &ha->idc_state_handler);
  break;
 case 128:
  if (ha->dpc_hp_wq)
   queue_work(ha->dpc_hp_wq, &ha->nic_core_unrecoverable);
  break;
 default:
  ql_log(ql_log_warn, base_vha, 0xb05f,
      "Unknow work-code=0x%x.\n", work_code);
 }

 return;
}
