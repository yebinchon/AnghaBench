
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pmcraid_instance {TYPE_3__* host; int ioa_state; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
struct TYPE_6__ {int host_lock; } ;
struct TYPE_4__ {int ioasc; } ;
struct TYPE_5__ {TYPE_1__ ioasa; } ;


 int IOA_STATE_IN_RESET_ALERT ;
 scalar_t__ le32_to_cpu (int ) ;
 int pmcraid_err (char*,scalar_t__) ;
 int pmcraid_querycfg (struct pmcraid_cmd*) ;
 int pmcraid_reset_alert (struct pmcraid_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void pmcraid_get_fwversion_done(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 u32 ioasc = le32_to_cpu(cmd->ioa_cb->ioasa.ioasc);
 unsigned long lock_flags;





 if (ioasc) {
  pmcraid_err("IOA Inquiry failed with %x\n", ioasc);
  spin_lock_irqsave(pinstance->host->host_lock, lock_flags);
  pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
  pmcraid_reset_alert(cmd);
  spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
 } else {
  pmcraid_querycfg(cmd);
 }
}
