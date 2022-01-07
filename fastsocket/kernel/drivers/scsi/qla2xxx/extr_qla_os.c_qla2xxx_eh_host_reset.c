
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {TYPE_2__* isp_ops; scalar_t__ wq; int pdev; } ;
struct TYPE_15__ {int host_no; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_14__ {scalar_t__ (* abort_isp ) (TYPE_3__*) ;} ;
struct TYPE_13__ {unsigned int id; unsigned int lun; int host; } ;


 int ABORT_ISP_ACTIVE ;
 int FAILED ;
 int ISP_ABORT_NEEDED ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 scalar_t__ QLA_SUCCESS ;
 int SUCCESS ;
 int WAIT_HOST ;
 int clear_bit (int ,int *) ;
 int flush_workqueue (scalar_t__) ;
 TYPE_3__* pci_get_drvdata (int ) ;
 int ql_log (int ,TYPE_3__*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 scalar_t__ qla2x00_eh_wait_for_pending_commands (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ qla2x00_vp_abort_isp (TYPE_3__*) ;
 scalar_t__ qla2x00_wait_for_hba_online (TYPE_3__*) ;
 scalar_t__ qla2x00_wait_for_reset_ready (TYPE_3__*) ;
 int qla82xx_fcoe_ctx_reset (TYPE_3__*) ;
 int set_bit (int ,int *) ;
 TYPE_3__* shost_priv (int ) ;
 scalar_t__ stub1 (TYPE_3__*) ;

__attribute__((used)) static int
qla2xxx_eh_host_reset(struct scsi_cmnd *cmd)
{
 scsi_qla_host_t *vha = shost_priv(cmd->device->host);
 struct qla_hw_data *ha = vha->hw;
 int ret = FAILED;
 unsigned int id, lun;
 scsi_qla_host_t *base_vha = pci_get_drvdata(ha->pdev);

 id = cmd->device->id;
 lun = cmd->device->lun;

 ql_log(ql_log_info, vha, 0x8018,
     "ADAPTER RESET ISSUED nexus=%ld:%d:%d.\n", vha->host_no, id, lun);

 if (qla2x00_wait_for_reset_ready(vha) != QLA_SUCCESS)
  goto eh_host_reset_lock;

 if (vha != base_vha) {
  if (qla2x00_vp_abort_isp(vha))
   goto eh_host_reset_lock;
 } else {
  if (IS_QLA82XX(vha->hw)) {
   if (!qla82xx_fcoe_ctx_reset(vha)) {

    ret = SUCCESS;
    goto eh_host_reset_lock;
   }

  }
  if (ha->wq)
   flush_workqueue(ha->wq);

  set_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
  if (ha->isp_ops->abort_isp(base_vha)) {
   clear_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);

   set_bit(ISP_ABORT_NEEDED, &base_vha->dpc_flags);

   if (qla2x00_wait_for_hba_online(base_vha)
    != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0x802a,
        "wait for hba online failed.\n");
    goto eh_host_reset_lock;
   }
  }
  clear_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
 }


 if (qla2x00_eh_wait_for_pending_commands(vha, 0, 0, WAIT_HOST) ==
  QLA_SUCCESS)
  ret = SUCCESS;

eh_host_reset_lock:
 ql_log(ql_log_info, vha, 0x8017,
     "ADAPTER RESET %s nexus=%ld:%d:%d.\n",
     (ret == FAILED) ? "FAILED" : "SUCCEEDED", vha->host_no, id, lun);

 return ret;
}
