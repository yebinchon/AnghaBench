
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {int dpc_flags; } ;
struct TYPE_10__ {int flags; int loop_id; } ;
typedef TYPE_1__ fc_port_t ;


 int FCF_ASYNC_SENT ;
 int FCF_FCP2_DEVICE ;
 int FCF_LOGIN_NEEDED ;




 int QLA_LOGIO_LOGIN_RETRIED ;
 int QLA_NOT_LOGGED_IN ;
 int QLA_SUCCESS ;
 int RELOGIN_NEEDED ;
 int qla2x00_find_new_loop_id (struct scsi_qla_host*,TYPE_1__*) ;
 int qla2x00_get_port_database (struct scsi_qla_host*,TYPE_1__*,int ) ;
 int qla2x00_mark_device_lost (struct scsi_qla_host*,TYPE_1__*,int,int ) ;
 int qla2x00_post_async_adisc_work (struct scsi_qla_host*,TYPE_1__*,int*) ;
 int qla2x00_post_async_login_work (struct scsi_qla_host*,TYPE_1__*,int *) ;
 int qla2x00_post_async_logout_work (struct scsi_qla_host*,TYPE_1__*,int *) ;
 int qla2x00_update_fcport (struct scsi_qla_host*,TYPE_1__*) ;
 int set_bit (int ,int *) ;

void
qla2x00_async_login_done(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 int rval;

 switch (data[0]) {
 case 131:





  rval = qla2x00_get_port_database(vha, fcport, 0);
  if (rval == QLA_NOT_LOGGED_IN) {
   fcport->flags &= ~FCF_ASYNC_SENT;
   fcport->flags |= FCF_LOGIN_NEEDED;
   set_bit(RELOGIN_NEEDED, &vha->dpc_flags);
   break;
  }

  if (rval != QLA_SUCCESS) {
   qla2x00_post_async_logout_work(vha, fcport, ((void*)0));
   qla2x00_post_async_login_work(vha, fcport, ((void*)0));
   break;
  }
  if (fcport->flags & FCF_FCP2_DEVICE) {
   qla2x00_post_async_adisc_work(vha, fcport, data);
   break;
  }
  qla2x00_update_fcport(vha, fcport);
  break;
 case 130:
  fcport->flags &= ~FCF_ASYNC_SENT;
  if (data[1] & QLA_LOGIO_LOGIN_RETRIED)
   set_bit(RELOGIN_NEEDED, &vha->dpc_flags);
  else
   qla2x00_mark_device_lost(vha, fcport, 1, 0);
  break;
 case 128:
  fcport->loop_id = data[1];
  qla2x00_post_async_logout_work(vha, fcport, ((void*)0));
  qla2x00_post_async_login_work(vha, fcport, ((void*)0));
  break;
 case 129:
  fcport->loop_id++;
  rval = qla2x00_find_new_loop_id(vha, fcport);
  if (rval != QLA_SUCCESS) {
   fcport->flags &= ~FCF_ASYNC_SENT;
   qla2x00_mark_device_lost(vha, fcport, 1, 0);
   break;
  }
  qla2x00_post_async_login_work(vha, fcport, ((void*)0));
  break;
 }
 return;
}
