
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ioa_state; } ;
struct pmcraid_instance {int ioa_reset_in_progress; TYPE_5__* host; int ioa_state; TYPE_4__ scn; struct pmcraid_cmd* reset_cmd; scalar_t__ ioa_reset_attempts; TYPE_1__* pdev; } ;
struct pmcraid_cmd {int cmd_done; TYPE_3__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
struct TYPE_10__ {int host_lock; } ;
struct TYPE_7__ {int * cdb; } ;
struct TYPE_8__ {TYPE_2__ ioarcb; } ;
struct TYPE_6__ {int dev; } ;


 int IOA_STATE_IN_RESET_ALERT ;
 scalar_t__ PMC_DEVICE_EVENT_RESET_START ;
 scalar_t__ PMC_DEVICE_EVENT_SHUTDOWN_START ;
 int dev_info (int *,char*,int ) ;
 int pmcraid_err (char*) ;
 struct pmcraid_cmd* pmcraid_get_free_cmd (struct pmcraid_instance*) ;
 int pmcraid_info (char*) ;
 int pmcraid_ioa_reset ;
 int pmcraid_notify_ioastate (struct pmcraid_instance*,scalar_t__) ;
 int pmcraid_reset_alert (struct pmcraid_cmd*) ;
 int scsi_block_requests (TYPE_5__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void pmcraid_timeout_handler(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 unsigned long lock_flags;

 dev_info(&pinstance->pdev->dev,
  "Adapter being reset due to cmd(CDB[0] = %x) timeout\n",
  cmd->ioa_cb->ioarcb.cdb[0]);







 spin_lock_irqsave(pinstance->host->host_lock, lock_flags);
 if (!pinstance->ioa_reset_in_progress) {
  pinstance->ioa_reset_attempts = 0;
  cmd = pmcraid_get_free_cmd(pinstance);




  if (cmd == ((void*)0)) {
   spin_unlock_irqrestore(pinstance->host->host_lock,
            lock_flags);
   pmcraid_err("no free cmnd block for timeout handler\n");
   return;
  }

  pinstance->reset_cmd = cmd;
  pinstance->ioa_reset_in_progress = 1;
 } else {
  pmcraid_info("reset is already in progress\n");

  if (pinstance->reset_cmd != cmd) {




   pmcraid_err("cmd is pending but reset in progress\n");
  }






  if (cmd == pinstance->reset_cmd)
   cmd->cmd_done = pmcraid_ioa_reset;
 }


 if (pinstance->scn.ioa_state != PMC_DEVICE_EVENT_RESET_START &&
     pinstance->scn.ioa_state != PMC_DEVICE_EVENT_SHUTDOWN_START)
  pmcraid_notify_ioastate(pinstance,
     PMC_DEVICE_EVENT_RESET_START);

 pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
 scsi_block_requests(pinstance->host);
 pmcraid_reset_alert(cmd);
 spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
}
