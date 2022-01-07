
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_15__ {void* data; void* lun; void* flags; } ;
struct TYPE_16__ {TYPE_2__ tmf; } ;
struct srb_iocb {int timeout; TYPE_3__ u; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_14__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_19__ {char* name; int (* free ) (struct scsi_qla_host*,TYPE_6__*) ;int handle; int done; TYPE_1__ u; int type; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_17__ {int al_pa; int area; int domain; } ;
struct TYPE_18__ {TYPE_4__ b; } ;
struct TYPE_20__ {struct scsi_qla_host* vha; TYPE_5__ d_id; int loop_id; } ;
typedef TYPE_7__ fc_port_t ;


 int GFP_KERNEL ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_TM_CMD ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ,int ) ;
 int ql_dbg_taskm ;
 int qla2x00_async_iocb_timeout ;
 int qla2x00_async_tm_cmd_done ;
 scalar_t__ qla2x00_get_async_timeout (struct scsi_qla_host*) ;
 TYPE_6__* qla2x00_get_sp (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2x00_init_timer (TYPE_6__*,scalar_t__) ;
 int qla2x00_start_sp (TYPE_6__*) ;
 int stub1 (struct scsi_qla_host*,TYPE_6__*) ;

int
qla2x00_async_tm_cmd(fc_port_t *fcport, uint32_t tm_flags, uint32_t lun,
 uint32_t tag)
{
 struct scsi_qla_host *vha = fcport->vha;
 srb_t *sp;
 struct srb_iocb *tcf;
 int rval;

 rval = QLA_FUNCTION_FAILED;
 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 sp->type = SRB_TM_CMD;
 sp->name = "tmf";
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);

 tcf = &sp->u.iocb_cmd;
 tcf->u.tmf.flags = tm_flags;
 tcf->u.tmf.lun = lun;
 tcf->u.tmf.data = tag;
 tcf->timeout = qla2x00_async_iocb_timeout;
 sp->done = qla2x00_async_tm_cmd_done;

 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 ql_dbg(ql_dbg_taskm, vha, 0x802f,
     "Async-tmf hdl=%x loop-id=%x portid=%02x%02x%02x.\n",
     sp->handle, fcport->loop_id, fcport->d_id.b.domain,
     fcport->d_id.b.area, fcport->d_id.b.al_pa);
 return rval;

done_free_sp:
 sp->free(fcport->vha, sp);
done:
 return rval;
}
