
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ host_failed; scalar_t__ host_eh_scheduled; scalar_t__ host_busy; int * ehandler; int host_no; TYPE_1__* transportt; } ;
struct TYPE_2__ {int (* eh_strategy_handler ) (struct Scsi_Host*) ;} ;


 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int kthread_should_stop () ;
 int printk (char*,int ,...) ;
 int schedule () ;
 int scsi_restart_operations (struct Scsi_Host*) ;
 int scsi_unjam_host (struct Scsi_Host*) ;
 int set_current_state (int ) ;
 int stub1 (struct Scsi_Host*) ;

int scsi_error_handler(void *data)
{
 struct Scsi_Host *shost = data;







 while (!kthread_should_stop()) {
  set_current_state(TASK_INTERRUPTIBLE);
  if ((shost->host_failed == 0 && shost->host_eh_scheduled == 0) ||
      shost->host_failed != shost->host_busy) {
   SCSI_LOG_ERROR_RECOVERY(1,
    printk("scsi_eh_%d: sleeping\n",
     shost->host_no));
   schedule();
   continue;
  }

  __set_current_state(TASK_RUNNING);
  SCSI_LOG_ERROR_RECOVERY(1,
   printk("scsi_eh_%d: waking up %d/%d/%d\n",
          shost->host_no, shost->host_eh_scheduled,
          shost->host_failed, shost->host_busy));






  if (shost->transportt->eh_strategy_handler)
   shost->transportt->eh_strategy_handler(shost);
  else
   scsi_unjam_host(shost);
  scsi_restart_operations(shost);
 }
 __set_current_state(TASK_RUNNING);

 SCSI_LOG_ERROR_RECOVERY(1,
  printk("Error handler scsi_eh_%d exiting\n", shost->host_no));
 shost->ehandler = ((void*)0);
 return 0;
}
