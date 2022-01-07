
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int cmdpoll_misses; int cmdpoll_hits; int reqs; } ;
struct TYPE_5__ {struct mmc_request* mrq; } ;
struct msmsdcc_host {scalar_t__ pwr; int lock; int command_timer; TYPE_2__ stats; scalar_t__ base; scalar_t__ cmdpoll; TYPE_1__ curr; scalar_t__ eject; } ;
struct mmc_request {TYPE_4__* cmd; TYPE_3__* data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int flags; int bytes_xfered; int blksz; int blocks; } ;


 int CMD_SPINMAX ;
 int ENOMEDIUM ;
 scalar_t__ HZ ;
 int MCI_CMDCRCFAIL ;
 int MCI_CMDRESPEND ;
 int MCI_CMDTIMEOUT ;
 scalar_t__ MMCICLEAR ;
 scalar_t__ MMCISTATUS ;
 int MMC_DATA_READ ;
 int WARN_ON (int) ;
 scalar_t__ jiffies ;
 struct msmsdcc_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int mod_timer (int *,scalar_t__) ;
 int msmsdcc_do_cmdirq (struct msmsdcc_host*,int ) ;
 int msmsdcc_spin_on_status (struct msmsdcc_host*,int,int ) ;
 int msmsdcc_start_command (struct msmsdcc_host*,TYPE_4__*,int ) ;
 int msmsdcc_start_data (struct msmsdcc_host*,TYPE_3__*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
msmsdcc_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct msmsdcc_host *host = mmc_priv(mmc);
 unsigned long flags;

 WARN_ON(host->curr.mrq != ((void*)0));
 WARN_ON(host->pwr == 0);

 spin_lock_irqsave(&host->lock, flags);

 host->stats.reqs++;

 if (host->eject) {
  if (mrq->data && !(mrq->data->flags & MMC_DATA_READ)) {
   mrq->cmd->error = 0;
   mrq->data->bytes_xfered = mrq->data->blksz *
        mrq->data->blocks;
  } else
   mrq->cmd->error = -ENOMEDIUM;

  spin_unlock_irqrestore(&host->lock, flags);
  mmc_request_done(mmc, mrq);
  return;
 }

 host->curr.mrq = mrq;

 if (mrq->data && mrq->data->flags & MMC_DATA_READ)
  msmsdcc_start_data(host, mrq->data);

 msmsdcc_start_command(host, mrq->cmd, 0);

 if (host->cmdpoll && !msmsdcc_spin_on_status(host,
    MCI_CMDRESPEND|MCI_CMDCRCFAIL|MCI_CMDTIMEOUT,
    CMD_SPINMAX)) {
  uint32_t status = readl(host->base + MMCISTATUS);
  msmsdcc_do_cmdirq(host, status);
  writel(MCI_CMDRESPEND | MCI_CMDCRCFAIL | MCI_CMDTIMEOUT,
         host->base + MMCICLEAR);
  host->stats.cmdpoll_hits++;
 } else {
  host->stats.cmdpoll_misses++;
  mod_timer(&host->command_timer, jiffies + HZ);
 }
 spin_unlock_irqrestore(&host->lock, flags);
}
