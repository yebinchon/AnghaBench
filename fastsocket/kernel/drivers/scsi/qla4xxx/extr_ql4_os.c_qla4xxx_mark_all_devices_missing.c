
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int host; } ;


 int iscsi_host_for_each_session (int ,int ) ;
 int qla4xxx_mark_device_missing ;

void qla4xxx_mark_all_devices_missing(struct scsi_qla_host *ha)
{
 iscsi_host_for_each_session(ha->host, qla4xxx_mark_device_missing);
}
