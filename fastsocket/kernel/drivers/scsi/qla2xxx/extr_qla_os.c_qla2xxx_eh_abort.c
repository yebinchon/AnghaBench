
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {int hardware_lock; TYPE_2__* isp_ops; } ;
struct TYPE_13__ {int (* done ) (struct qla_hw_data*,TYPE_3__*,int ) ;} ;
typedef TYPE_3__ srb_t ;
struct TYPE_14__ {int host_no; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_12__ {scalar_t__ (* abort_command ) (TYPE_3__*) ;} ;
struct TYPE_11__ {unsigned int id; unsigned int lun; int host; } ;


 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 int FAILED ;
 scalar_t__ QLA_SUCCESS ;
 int SUCCESS ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int ql_dbg (int ,TYPE_4__*,int,char*,struct scsi_cmnd*,...) ;
 int ql_dbg_taskm ;
 int ql_log (int ,TYPE_4__*,int,char*,struct scsi_cmnd*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 scalar_t__ qla2x00_eh_wait_on_command (struct scsi_cmnd*) ;
 TYPE_4__* shost_priv (int ) ;
 int sp_get (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 int stub2 (struct qla_hw_data*,TYPE_3__*,int ) ;

__attribute__((used)) static int
qla2xxx_eh_abort(struct scsi_cmnd *cmd)
{
 scsi_qla_host_t *vha = shost_priv(cmd->device->host);
 srb_t *sp;
 int ret;
 unsigned int id, lun;
 unsigned long flags;
 int wait = 0;
 struct qla_hw_data *ha = vha->hw;

 if (!CMD_SP(cmd))
  return SUCCESS;

 ret = fc_block_scsi_eh(cmd);
 if (ret != 0)
  return ret;
 ret = SUCCESS;

 id = cmd->device->id;
 lun = cmd->device->lun;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 sp = (srb_t *) CMD_SP(cmd);
 if (!sp) {
  spin_unlock_irqrestore(&ha->hardware_lock, flags);
  return SUCCESS;
 }

 ql_dbg(ql_dbg_taskm, vha, 0x8002,
     "Aborting from RISC nexus=%ld:%d:%d sp=%p cmd=%p\n",
     vha->host_no, id, lun, sp, cmd);


 sp_get(sp);

 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 if (ha->isp_ops->abort_command(sp)) {
  ret = FAILED;
  ql_dbg(ql_dbg_taskm, vha, 0x8003,
      "Abort command mbx failed cmd=%p.\n", cmd);
 } else {
  ql_dbg(ql_dbg_taskm, vha, 0x8004,
      "Abort command mbx success cmd=%p.\n", cmd);
  wait = 1;
 }
 spin_lock_irqsave(&ha->hardware_lock, flags);
 sp->done(ha, sp, 0);
 spin_unlock_irqrestore(&ha->hardware_lock, flags);


 if (ret == FAILED && !CMD_SP(cmd))
  ret = SUCCESS;


 if (wait) {
  if (qla2x00_eh_wait_on_command(cmd) != QLA_SUCCESS) {
   ql_log(ql_log_warn, vha, 0x8006,
       "Abort handler timed out cmd=%p.\n", cmd);
   ret = FAILED;
  }
 }

 ql_log(ql_log_info, vha, 0x801c,
     "Abort command issued nexus=%ld:%d:%d --  %d %x.\n",
     vha->host_no, id, lun, wait, ret);

 return ret;
}
