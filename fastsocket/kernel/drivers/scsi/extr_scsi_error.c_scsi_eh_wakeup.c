
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ host_busy; scalar_t__ host_failed; int ehandler; } ;


 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int printk (char*) ;
 int trace_scsi_eh_wakeup (struct Scsi_Host*) ;
 int wake_up_process (int ) ;

void scsi_eh_wakeup(struct Scsi_Host *shost)
{
 if (shost->host_busy == shost->host_failed) {
  trace_scsi_eh_wakeup(shost);
  wake_up_process(shost->ehandler);
  SCSI_LOG_ERROR_RECOVERY(5,
    printk("Waking error handler thread\n"));
 }
}
