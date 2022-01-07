
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


typedef int uint16_t ;
struct TYPE_15__ {int flags; } ;
struct TYPE_16__ {TYPE_2__ logio; } ;
struct srb_iocb {TYPE_3__ u; int timeout; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_14__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_19__ {char* name; int (* free ) (int ,TYPE_6__*) ;int handle; int done; TYPE_1__ u; int type; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_17__ {int al_pa; int area; int domain; } ;
struct TYPE_18__ {TYPE_4__ b; } ;
struct TYPE_20__ {int vha; int login_retry; TYPE_5__ d_id; int loop_id; } ;
typedef TYPE_7__ fc_port_t ;


 int GFP_KERNEL ;
 int QLA_FUNCTION_FAILED ;
 int QLA_LOGIO_LOGIN_RETRIED ;
 int QLA_SUCCESS ;
 int SRB_LOGIN_CMD ;
 int SRB_LOGIN_COND_PLOGI ;
 int SRB_LOGIN_RETRIED ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int ,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla2x00_async_iocb_timeout ;
 int qla2x00_async_login_sp_done ;
 scalar_t__ qla2x00_get_async_timeout (struct scsi_qla_host*) ;
 TYPE_6__* qla2x00_get_sp (struct scsi_qla_host*,TYPE_7__*,int ) ;
 int qla2x00_init_timer (TYPE_6__*,scalar_t__) ;
 int qla2x00_start_sp (TYPE_6__*) ;
 int stub1 (int ,TYPE_6__*) ;

int
qla2x00_async_login(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 srb_t *sp;
 struct srb_iocb *lio;
 int rval;

 rval = QLA_FUNCTION_FAILED;
 sp = qla2x00_get_sp(vha, fcport, GFP_KERNEL);
 if (!sp)
  goto done;

 sp->type = SRB_LOGIN_CMD;
 sp->name = "login";
 qla2x00_init_timer(sp, qla2x00_get_async_timeout(vha) + 2);
 lio = &sp->u.iocb_cmd;
 lio->timeout = qla2x00_async_iocb_timeout;
 sp->done = qla2x00_async_login_sp_done;
 lio->u.logio.flags |= SRB_LOGIN_COND_PLOGI;
 if (data[1] & QLA_LOGIO_LOGIN_RETRIED)
  lio->u.logio.flags |= SRB_LOGIN_RETRIED;
 rval = qla2x00_start_sp(sp);
 if (rval != QLA_SUCCESS)
  goto done_free_sp;

 ql_dbg(ql_dbg_disc, vha, 0x2072,
     "Async-login - hdl=%x, loopid=%x portid=%02x%02x%02x "
     "retries=%d.\n", sp->handle, fcport->loop_id,
     fcport->d_id.b.domain, fcport->d_id.b.area, fcport->d_id.b.al_pa,
     fcport->login_retry);
 return rval;

done_free_sp:
 sp->free(fcport->vha, sp);
done:
 return rval;
}
