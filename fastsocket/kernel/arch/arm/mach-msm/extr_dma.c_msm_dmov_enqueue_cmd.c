
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dmov_cmd {int list; int cmdptr; } ;


 int DMOV_CMD_PTR (unsigned int) ;
 int DMOV_CONFIG (unsigned int) ;
 int DMOV_CONFIG_IRQ_EN ;
 int DMOV_STATUS (unsigned int) ;
 unsigned int DMOV_STATUS_CMD_PTR_RDY ;
 int INT_ADM_AARM ;
 int PRINT_ERROR (char*,unsigned int,unsigned int) ;
 int PRINT_FLOW (char*,unsigned int) ;
 int PRINT_IO (char*,unsigned int,unsigned int) ;
 int * active_commands ;
 unsigned int channel_active ;
 int enable_irq (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int msm_dmov_lock ;
 unsigned int readl (int ) ;
 int * ready_commands ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int ) ;

void msm_dmov_enqueue_cmd(unsigned id, struct msm_dmov_cmd *cmd)
{
 unsigned long irq_flags;
 unsigned int status;

 spin_lock_irqsave(&msm_dmov_lock, irq_flags);
 status = readl(DMOV_STATUS(id));
 if (list_empty(&ready_commands[id]) &&
  (status & DMOV_STATUS_CMD_PTR_RDY)) {






  PRINT_IO("msm_dmov_enqueue_cmd(%d), start command, status %x\n", id, status);
  list_add_tail(&cmd->list, &active_commands[id]);
  if (!channel_active)
   enable_irq(INT_ADM_AARM);
  channel_active |= 1U << id;
  writel(cmd->cmdptr, DMOV_CMD_PTR(id));
 } else {
  if (list_empty(&active_commands[id]))
   PRINT_ERROR("msm_dmov_enqueue_cmd(%d), error datamover stalled, status %x\n", id, status);

  PRINT_IO("msm_dmov_enqueue_cmd(%d), enqueue command, status %x\n", id, status);
  list_add_tail(&cmd->list, &ready_commands[id]);
 }
 spin_unlock_irqrestore(&msm_dmov_lock, irq_flags);
}
