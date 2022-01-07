
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;
typedef int fc_port_t ;


 int qla2x00_mark_device_lost (struct scsi_qla_host*,int *,int,int ) ;

void
qla2x00_async_logout_done(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
 qla2x00_mark_device_lost(vha, fcport, 1, 0);
 return;
}
