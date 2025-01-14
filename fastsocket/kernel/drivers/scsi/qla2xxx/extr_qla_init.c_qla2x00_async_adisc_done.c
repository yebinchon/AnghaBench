
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int dpc_flags; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ fc_port_t ;


 int FCF_ASYNC_SENT ;
 int MBS_COMMAND_COMPLETE ;
 int QLA_LOGIO_LOGIN_RETRIED ;
 int RELOGIN_NEEDED ;
 int qla2x00_mark_device_lost (struct scsi_qla_host*,TYPE_1__*,int,int ) ;
 int qla2x00_update_fcport (struct scsi_qla_host*,TYPE_1__*) ;
 int set_bit (int ,int *) ;

void
qla2x00_async_adisc_done(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 if (data[0] == MBS_COMMAND_COMPLETE) {
  qla2x00_update_fcport(vha, fcport);

  return;
 }


 fcport->flags &= ~FCF_ASYNC_SENT;
 if (data[1] & QLA_LOGIO_LOGIN_RETRIED)
  set_bit(RELOGIN_NEEDED, &vha->dpc_flags);
 else
  qla2x00_mark_device_lost(vha, fcport, 1, 0);

 return;
}
