
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int chip_reset_done; scalar_t__ eeh_busy; scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_3__ flags; TYPE_2__* isp_ops; int rsp_qid_map; int req_qid_map; scalar_t__ beacon_blink_led; scalar_t__ isp_abort_cnt; scalar_t__ thermal_support; } ;
struct TYPE_13__ {scalar_t__ management_server_logged_in; scalar_t__ reset_active; scalar_t__ online; } ;
struct TYPE_16__ {int req; scalar_t__ marker_needed; TYPE_1__ flags; scalar_t__ dpc_flags; int device_flags; int loop_state; int loop_down_timer; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_14__ {int (* pci_config ) (TYPE_4__*) ;} ;


 int DFLG_NO_CABLE ;
 int LOOP_DOWN ;
 int LOOP_DOWN_TIME ;
 int QLA_SUCCESS ;
 int atomic_set (int *,int ) ;
 int ql_dbg (int ,TYPE_4__*,int,char*) ;
 int ql_dbg_init ;
 int ql_log (int ,TYPE_4__*,int,char*) ;
 int ql_log_warn ;
 int qla2x00_alloc_outstanding_cmds (struct qla_hw_data*,int ) ;
 int qla2x00_init_rings (TYPE_4__*) ;
 int qlafx00_config_queues (TYPE_4__*) ;
 int qlafx00_init_fw_ready (TYPE_4__*) ;
 int qlafx00_save_queue_ptrs (TYPE_4__*) ;
 int set_bit (int ,int ) ;
 int stub1 (TYPE_4__*) ;

int
qlafx00_initialize_adapter(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;


 vha->flags.online = 0;
 ha->flags.chip_reset_done = 0;
 vha->flags.reset_active = 0;
 ha->flags.pci_channel_io_perm_failure = 0;
 ha->flags.eeh_busy = 0;
 ha->thermal_support = 0;
 atomic_set(&vha->loop_down_timer, LOOP_DOWN_TIME);
 atomic_set(&vha->loop_state, LOOP_DOWN);
 vha->device_flags = DFLG_NO_CABLE;
 vha->dpc_flags = 0;
 vha->flags.management_server_logged_in = 0;
 vha->marker_needed = 0;
 ha->isp_abort_cnt = 0;
 ha->beacon_blink_led = 0;

 set_bit(0, ha->req_qid_map);
 set_bit(0, ha->rsp_qid_map);

 ql_dbg(ql_dbg_init, vha, 0x0147,
     "Configuring PCI space...\n");

 rval = ha->isp_ops->pci_config(vha);
 if (rval) {
  ql_log(ql_log_warn, vha, 0x0148,
      "Unable to configure PCI space.\n");
  return rval;
 }

 rval = qlafx00_init_fw_ready(vha);
 if (rval != QLA_SUCCESS)
  return rval;

 qlafx00_save_queue_ptrs(vha);

 rval = qlafx00_config_queues(vha);
 if (rval != QLA_SUCCESS)
  return rval;





 rval = qla2x00_alloc_outstanding_cmds(ha, vha->req);
 if (rval != QLA_SUCCESS)
  return rval;

 rval = qla2x00_init_rings(vha);
 ha->flags.chip_reset_done = 1;

 return rval;
}
