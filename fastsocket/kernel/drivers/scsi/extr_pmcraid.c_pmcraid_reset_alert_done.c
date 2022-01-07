
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pmcraid_instance {TYPE_1__* host; int ioa_status; } ;
struct TYPE_4__ {unsigned long data; scalar_t__ expires; void (* function ) (unsigned long) ;} ;
struct pmcraid_cmd {scalar_t__ time_left; TYPE_2__ timer; struct pmcraid_instance* drv_inst; } ;
struct TYPE_3__ {int host_lock; } ;


 int INTRS_CRITICAL_OP_IN_PROGRESS ;
 scalar_t__ PMCRAID_CHECK_FOR_RESET_TIMEOUT ;
 int add_timer (TYPE_2__*) ;
 int ioread32 (int ) ;
 scalar_t__ jiffies ;
 int pmcraid_info (char*) ;
 int pmcraid_ioa_reset (struct pmcraid_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void pmcraid_reset_alert_done(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 u32 status = ioread32(pinstance->ioa_status);
 unsigned long lock_flags;





 if (((status & INTRS_CRITICAL_OP_IN_PROGRESS) == 0) ||
     cmd->time_left <= 0) {
  pmcraid_info("critical op is reset proceeding with reset\n");
  spin_lock_irqsave(pinstance->host->host_lock, lock_flags);
  pmcraid_ioa_reset(cmd);
  spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
 } else {
  pmcraid_info("critical op is not yet reset waiting again\n");

  cmd->time_left -= PMCRAID_CHECK_FOR_RESET_TIMEOUT;
  cmd->timer.data = (unsigned long)cmd;
  cmd->timer.expires = jiffies + PMCRAID_CHECK_FOR_RESET_TIMEOUT;
  cmd->timer.function =
   (void (*)(unsigned long))pmcraid_reset_alert_done;
  add_timer(&cmd->timer);
 }
}
