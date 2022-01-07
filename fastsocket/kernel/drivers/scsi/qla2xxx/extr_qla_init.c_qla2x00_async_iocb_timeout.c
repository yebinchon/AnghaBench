
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int flags; int * data; } ;
struct TYPE_14__ {TYPE_4__ logio; } ;
struct srb_iocb {TYPE_5__ u; } ;
struct TYPE_12__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_3__ u; int handle; int name; TYPE_7__* fcport; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_10__ {int al_pa; int area; int domain; } ;
struct TYPE_11__ {TYPE_1__ b; } ;
struct TYPE_16__ {int vha; int flags; TYPE_2__ d_id; } ;
typedef TYPE_7__ fc_port_t ;


 int FCF_ASYNC_SENT ;
 int MBS_COMMAND_ERROR ;
 int QLA_LOGIO_LOGIN_RETRIED ;
 scalar_t__ SRB_LOGIN_CMD ;
 int SRB_LOGIN_RETRIED ;
 int ql_dbg (int ,int ,int,char*,int ,int ,int ,int ,int ) ;
 int ql_dbg_disc ;
 int qla2x00_post_async_login_done_work (int ,TYPE_7__*,int *) ;
 int qla2x00_post_async_logout_work (int ,TYPE_7__*,int *) ;

__attribute__((used)) static void
qla2x00_async_iocb_timeout(void *data)
{
 srb_t *sp = (srb_t *)data;
 fc_port_t *fcport = sp->fcport;

 ql_dbg(ql_dbg_disc, fcport->vha, 0x2071,
     "Async-%s timeout - hdl=%x portid=%02x%02x%02x.\n",
     sp->name, sp->handle, fcport->d_id.b.domain, fcport->d_id.b.area,
     fcport->d_id.b.al_pa);

 fcport->flags &= ~FCF_ASYNC_SENT;
 if (sp->type == SRB_LOGIN_CMD) {
  struct srb_iocb *lio = &sp->u.iocb_cmd;
  qla2x00_post_async_logout_work(fcport->vha, fcport, ((void*)0));

  lio->u.logio.data[0] = MBS_COMMAND_ERROR;
  lio->u.logio.data[1] = lio->u.logio.flags & SRB_LOGIN_RETRIED ?
      QLA_LOGIO_LOGIN_RETRIED : 0;
  qla2x00_post_async_login_done_work(fcport->vha, fcport,
      lio->u.logio.data);
 }
}
