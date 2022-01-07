
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int response_busy; int base; int flags; int irq_lock; scalar_t__ use_dma; TYPE_1__* mrq; struct mmc_command* cmd; int mmc; } ;
struct mmc_data {int flags; } ;
struct mmc_command {int opcode; int arg; int flags; } ;
struct TYPE_2__ {struct mmc_command* stop; } ;


 int ARG ;
 int BCE ;
 int BRR_ENABLE ;
 int BWR_ENABLE ;
 int CMD ;
 int DDIR ;
 int DMA_EN ;
 int DP_SELECT ;
 int IE ;
 int INT_EN_MASK ;
 int ISE ;
 int MMC_DATA_READ ;
 int MMC_RSP_136 ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_PRESENT ;
 int MSBS ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int STAT ;
 int STAT_CLEAR ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int in_interrupt () ;
 int mmc_dev (int ) ;
 int mmc_hostname (int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
omap_hsmmc_start_command(struct omap_hsmmc_host *host, struct mmc_command *cmd,
 struct mmc_data *data)
{
 int cmdreg = 0, resptype = 0, cmdtype = 0;

 dev_dbg(mmc_dev(host->mmc), "%s: CMD%d, argument 0x%08x\n",
  mmc_hostname(host->mmc), cmd->opcode, cmd->arg);
 host->cmd = cmd;




 OMAP_HSMMC_WRITE(host->base, STAT, STAT_CLEAR);
 OMAP_HSMMC_WRITE(host->base, ISE, INT_EN_MASK);

 if (host->use_dma)
  OMAP_HSMMC_WRITE(host->base, IE,
     INT_EN_MASK & ~(BRR_ENABLE | BWR_ENABLE));
 else
  OMAP_HSMMC_WRITE(host->base, IE, INT_EN_MASK);

 host->response_busy = 0;
 if (cmd->flags & MMC_RSP_PRESENT) {
  if (cmd->flags & MMC_RSP_136)
   resptype = 1;
  else if (cmd->flags & MMC_RSP_BUSY) {
   resptype = 3;
   host->response_busy = 1;
  } else
   resptype = 2;
 }






 if (cmd == host->mrq->stop)
  cmdtype = 0x3;

 cmdreg = (cmd->opcode << 24) | (resptype << 16) | (cmdtype << 22);

 if (data) {
  cmdreg |= DP_SELECT | MSBS | BCE;
  if (data->flags & MMC_DATA_READ)
   cmdreg |= DDIR;
  else
   cmdreg &= ~(DDIR);
 }

 if (host->use_dma)
  cmdreg |= DMA_EN;






 if (!in_interrupt())
  spin_unlock_irqrestore(&host->irq_lock, host->flags);

 OMAP_HSMMC_WRITE(host->base, ARG, cmd->arg);
 OMAP_HSMMC_WRITE(host->base, CMD, cmdreg);
}
