
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ comp_status; int comp; int cmd_hndl; } ;
struct TYPE_14__ {TYPE_2__ abt; } ;
struct srb_iocb {TYPE_3__ u; int timeout; } ;
struct TYPE_12__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {char* name; int (* free ) (int *,TYPE_4__*) ;int handle; int done; int type; TYPE_1__ u; TYPE_5__* fcport; } ;
typedef TYPE_4__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_16__ {int tgt_id; int * vha; } ;
typedef TYPE_5__ fc_port_t ;


 scalar_t__ CS_COMPLETE ;
 int FXDISC_TIMEOUT ;
 int GFP_KERNEL ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_ABT_CMD ;
 int init_completion (int *) ;
 int ql_dbg (int ,int *,int,char*,int ,int ) ;
 int ql_dbg_async ;
 TYPE_4__* qla2x00_get_sp (int *,TYPE_5__*,int ) ;
 int qla2x00_init_timer (TYPE_4__*,int ) ;
 int qla2x00_start_sp (TYPE_4__*) ;
 int qlafx00_abort_iocb_timeout ;
 int qlafx00_abort_sp_done ;
 int stub1 (int *,TYPE_4__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
qlafx00_async_abt_cmd(srb_t *cmd_sp)
{
 scsi_qla_host_t *vha = cmd_sp->fcport->vha;
 fc_port_t *fcport = cmd_sp->fcport;
 struct srb_iocb *abt_iocb;
 srb_t *sp;
 int rval = QLA_FUNCTION_FAILED;

 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 abt_iocb = &sp->u.iocb_cmd;
 sp->type = SRB_ABT_CMD;
 sp->name = "abort";
 qla2x00_init_timer(sp, FXDISC_TIMEOUT);
 abt_iocb->u.abt.cmd_hndl = cmd_sp->handle;
 sp->done = qlafx00_abort_sp_done;
 abt_iocb->timeout = qlafx00_abort_iocb_timeout;
 init_completion(&abt_iocb->u.abt.comp);

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 ql_dbg(ql_dbg_async, vha, 0x507c,
     "Abort command issued - hdl=%x, target_id=%x\n",
     cmd_sp->handle, fcport->tgt_id);

 wait_for_completion(&abt_iocb->u.abt.comp);

 rval = abt_iocb->u.abt.comp_status == CS_COMPLETE ?
     QLA_SUCCESS : QLA_FUNCTION_FAILED;

done_free_sp:
 sp->free(vha, sp);
done:
 return rval;
}
