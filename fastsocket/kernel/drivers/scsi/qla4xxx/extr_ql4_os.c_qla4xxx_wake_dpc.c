
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dpc_work; scalar_t__ dpc_thread; } ;


 int queue_work (scalar_t__,int *) ;

void qla4xxx_wake_dpc(struct scsi_qla_host *ha)
{
 if (ha->dpc_thread)
  queue_work(ha->dpc_thread, &ha->dpc_work);
}
