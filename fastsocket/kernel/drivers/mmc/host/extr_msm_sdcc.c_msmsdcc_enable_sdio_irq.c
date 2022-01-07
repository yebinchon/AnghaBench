
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msmsdcc_host {int lock; scalar_t__ base; int saved_irq0mask; } ;
struct mmc_host {int dummy; } ;


 int MCI_SDIOINTOPERMASK ;
 scalar_t__ MMCIMASK0 ;
 struct msmsdcc_host* mmc_priv (struct mmc_host*) ;
 int msmsdcc_sdioirq ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void msmsdcc_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct msmsdcc_host *host = mmc_priv(mmc);
 unsigned long flags;
 u32 status;

 spin_lock_irqsave(&host->lock, flags);
 if (msmsdcc_sdioirq == 1) {
  status = readl(host->base + MMCIMASK0);
  if (enable)
   status |= MCI_SDIOINTOPERMASK;
  else
   status &= ~MCI_SDIOINTOPERMASK;
  host->saved_irq0mask = status;
  writel(status, host->base + MMCIMASK0);
 }
 spin_unlock_irqrestore(&host->lock, flags);
}
