
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {struct req_que* req; struct qla_hw_data* hw; } ;
struct req_que {TYPE_1__** outstanding_cmds; } ;
struct qla_hw_data {int hardware_lock; } ;
struct TYPE_5__ {TYPE_2__* fcport; } ;
typedef TYPE_1__ srb_t ;
struct TYPE_6__ {struct scsi_qla_host* vha; } ;
typedef TYPE_2__ fc_port_t ;


 size_t DEFAULT_OUTSTANDING_COMMANDS ;
 int QLA_FUNCTION_FAILED ;
 int qlafx00_async_abt_cmd (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
qlafx00_abort_command(srb_t *sp)
{
 unsigned long flags = 0;

 uint32_t handle;
 fc_port_t *fcport = sp->fcport;
 struct scsi_qla_host *vha = fcport->vha;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req = vha->req;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 for (handle = 1; handle < DEFAULT_OUTSTANDING_COMMANDS; handle++) {
  if (req->outstanding_cmds[handle] == sp)
   break;
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
 if (handle == DEFAULT_OUTSTANDING_COMMANDS) {

  return QLA_FUNCTION_FAILED;
 }
 return qlafx00_async_abt_cmd(sp);
}
