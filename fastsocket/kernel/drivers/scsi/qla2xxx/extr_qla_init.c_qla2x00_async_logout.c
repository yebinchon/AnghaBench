
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct srb_iocb {int timeout; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_12__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {char* name; int (* free ) (int ,TYPE_4__*) ;int handle; int done; TYPE_1__ u; int type; } ;
typedef TYPE_4__ srb_t ;
struct TYPE_13__ {int al_pa; int area; int domain; } ;
struct TYPE_14__ {TYPE_2__ b; } ;
struct TYPE_16__ {int vha; TYPE_3__ d_id; int loop_id; } ;
typedef TYPE_5__ fc_port_t ;


 int GFP_KERNEL ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int SRB_LOGOUT_CMD ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla2x00_async_iocb_timeout ;
 int qla2x00_async_logout_sp_done ;
 scalar_t__ qla2x00_get_async_timeout (struct scsi_qla_host*) ;
 TYPE_4__* qla2x00_get_sp (struct scsi_qla_host*,TYPE_5__*,int ) ;
 int qla2x00_init_timer (TYPE_4__*,scalar_t__) ;
 int qla2x00_start_sp (TYPE_4__*) ;
 int stub1 (int ,TYPE_4__*) ;

int
qla2x00_async_logout(struct scsi_qla_host *vha, fc_port_t *fcport)
{
 srb_t *sp;
 struct srb_iocb *lio;
 int rval;

 rval = QLA_FUNCTION_FAILED;
 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 sp->type = SRB_LOGOUT_CMD;
 sp->name = "logout";
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);

 lio = &sp->u.iocb_cmd;
 lio->timeout = qla2x00_async_iocb_timeout;
 sp->done = qla2x00_async_logout_sp_done;
 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 ql_dbg(ql_dbg_disc, vha, 0x2070,
     "Async-logout - hdl=%x loop-id=%x portid=%02x%02x%02x.\n",
     sp->handle, fcport->loop_id, fcport->d_id.b.domain,
     fcport->d_id.b.area, fcport->d_id.b.al_pa);
 return rval;

done_free_sp:
 sp->free(fcport->vha, sp);
done:
 return rval;
}
