
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srb {int * wait; struct scsi_cmnd* cmd; } ;
struct scsi_qla_host {TYPE_1__* host; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct completion {int dummy; } ;
struct TYPE_2__ {int host_lock; } ;


 scalar_t__ CMD_HANDLE (struct scsi_cmnd*) ;
 scalar_t__ COMPLETED_HANDLE ;
 int FAILED ;
 int HZ ;
 int SUCCESS ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int wait_for_completion_timeout (struct completion*,int) ;

__attribute__((used)) static int
_qla1280_wait_for_single_command(struct scsi_qla_host *ha, struct srb *sp,
     struct completion *wait)
{
 int status = FAILED;
 struct scsi_cmnd *cmd = sp->cmd;

 spin_unlock_irq(ha->host->host_lock);
 wait_for_completion_timeout(wait, 4*HZ);
 spin_lock_irq(ha->host->host_lock);
 sp->wait = ((void*)0);
 if(CMD_HANDLE(cmd) == COMPLETED_HANDLE) {
  status = SUCCESS;
  (*cmd->scsi_done)(cmd);
 }
 return status;
}
