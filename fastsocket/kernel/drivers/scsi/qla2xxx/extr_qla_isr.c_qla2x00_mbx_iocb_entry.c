
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


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_11__ {int* data; int flags; } ;
struct TYPE_12__ {TYPE_2__ logio; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct req_que {int dummy; } ;
struct mbx_entry {int mb7; int mb6; int mb2; int mb1; int mb0; int status; int status_flags; int state_flags; int entry_status; } ;
struct TYPE_10__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_15__ {char* name; scalar_t__ type; int (* done ) (int *,TYPE_6__*,int ) ;int handle; TYPE_7__* fcport; TYPE_1__ u; } ;
typedef TYPE_6__ srb_t ;
typedef int scsi_qla_host_t ;
struct TYPE_13__ {int al_pa; int area; int domain; } ;
struct TYPE_14__ {TYPE_4__ b; } ;
struct TYPE_16__ {TYPE_5__ d_id; int flags; int port_type; } ;
typedef TYPE_7__ fc_port_t ;


 int BIT_0 ;
 int BIT_1 ;
 int FCF_FCP2_DEVICE ;
 int FCT_INITIATOR ;
 int FCT_TARGET ;
 int MBS_COMMAND_COMPLETE ;
 int MBS_COMMAND_ERROR ;


 int QLA_LOGIO_LOGIN_RETRIED ;
 scalar_t__ SRB_LOGIN_CMD ;
 int SRB_LOGIN_RETRIED ;
 int le16_to_cpu (int ) ;
 int ql_dbg (scalar_t__,int *,int,char*,char const*,int ,int ,int ,int ,int,...) ;
 scalar_t__ ql_dbg_async ;
 scalar_t__ ql_dbg_buffer ;
 int ql_dump_buffer (scalar_t__,int *,int,int *,int) ;
 int ql_log (int ,int *,int,char*,char const*,int ,int ,int ,int ,int,int,int,int,int,int) ;
 int ql_log_warn ;
 TYPE_6__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,struct mbx_entry*) ;
 int stub1 (int *,TYPE_6__*,int ) ;

__attribute__((used)) static void
qla2x00_mbx_iocb_entry(scsi_qla_host_t *vha, struct req_que *req,
    struct mbx_entry *mbx)
{
 const char func[] = "MBX-IOCB";
 const char *type;
 fc_port_t *fcport;
 srb_t *sp;
 struct srb_iocb *lio;
 uint16_t *data;
 uint16_t status;

 sp = qla2x00_get_sp_from_handle(vha, func, req, mbx);
 if (!sp)
  return;

 lio = &sp->u.iocb_cmd;
 type = sp->name;
 fcport = sp->fcport;
 data = lio->u.logio.data;

 data[0] = MBS_COMMAND_ERROR;
 data[1] = lio->u.logio.flags & SRB_LOGIN_RETRIED ?
     QLA_LOGIO_LOGIN_RETRIED: 0;
 if (mbx->entry_status) {
  ql_dbg(ql_dbg_async, vha, 0x5043,
      "Async-%s error entry - hdl=%x portid=%02x%02x%02x "
      "entry-status=%x status=%x state-flag=%x "
      "status-flags=%x.\n", type, sp->handle,
      fcport->d_id.b.domain, fcport->d_id.b.area,
      fcport->d_id.b.al_pa, mbx->entry_status,
      le16_to_cpu(mbx->status), le16_to_cpu(mbx->state_flags),
      le16_to_cpu(mbx->status_flags));

  ql_dump_buffer(ql_dbg_async + ql_dbg_buffer, vha, 0x5029,
      (uint8_t *)mbx, sizeof(*mbx));

  goto logio_done;
 }

 status = le16_to_cpu(mbx->status);
 if (status == 0x30 && sp->type == SRB_LOGIN_CMD &&
     le16_to_cpu(mbx->mb0) == MBS_COMMAND_COMPLETE)
  status = 0;
 if (!status && le16_to_cpu(mbx->mb0) == MBS_COMMAND_COMPLETE) {
  ql_dbg(ql_dbg_async, vha, 0x5045,
      "Async-%s complete - hdl=%x portid=%02x%02x%02x mbx1=%x.\n",
      type, sp->handle, fcport->d_id.b.domain,
      fcport->d_id.b.area, fcport->d_id.b.al_pa,
      le16_to_cpu(mbx->mb1));

  data[0] = MBS_COMMAND_COMPLETE;
  if (sp->type == SRB_LOGIN_CMD) {
   fcport->port_type = FCT_TARGET;
   if (le16_to_cpu(mbx->mb1) & BIT_0)
    fcport->port_type = FCT_INITIATOR;
   else if (le16_to_cpu(mbx->mb1) & BIT_1)
    fcport->flags |= FCF_FCP2_DEVICE;
  }
  goto logio_done;
 }

 data[0] = le16_to_cpu(mbx->mb0);
 switch (data[0]) {
 case 128:
  data[1] = le16_to_cpu(mbx->mb1);
  break;
 case 129:
  break;
 default:
  data[0] = MBS_COMMAND_ERROR;
  break;
 }

 ql_log(ql_log_warn, vha, 0x5046,
     "Async-%s failed - hdl=%x portid=%02x%02x%02x status=%x "
     "mb0=%x mb1=%x mb2=%x mb6=%x mb7=%x.\n", type, sp->handle,
     fcport->d_id.b.domain, fcport->d_id.b.area, fcport->d_id.b.al_pa,
     status, le16_to_cpu(mbx->mb0), le16_to_cpu(mbx->mb1),
     le16_to_cpu(mbx->mb2), le16_to_cpu(mbx->mb6),
     le16_to_cpu(mbx->mb7));

logio_done:
 sp->done(vha, sp, 0);
}
