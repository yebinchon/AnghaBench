
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct msmsdcc_host {int clks_on; scalar_t__ stat_irq; int lock; scalar_t__ base; int saved_irq0mask; int clk; int pclk; } ;
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ MMCIMASK0 ;
 scalar_t__ MMC_TYPE_SDIO ;
 int clk_enable (int ) ;
 int enable_irq (scalar_t__) ;
 struct mmc_host* mmc_get_drvdata (struct platform_device*) ;
 struct msmsdcc_host* mmc_priv (struct mmc_host*) ;
 int mmc_resume_host (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
msmsdcc_resume(struct platform_device *dev)
{
 struct mmc_host *mmc = mmc_get_drvdata(dev);
 unsigned long flags;

 if (mmc) {
  struct msmsdcc_host *host = mmc_priv(mmc);

  spin_lock_irqsave(&host->lock, flags);

  if (!host->clks_on) {
   clk_enable(host->pclk);
   clk_enable(host->clk);
   host->clks_on = 1;
  }

  writel(host->saved_irq0mask, host->base + MMCIMASK0);

  spin_unlock_irqrestore(&host->lock, flags);

  if (mmc->card && mmc->card->type != MMC_TYPE_SDIO)
   mmc_resume_host(mmc);
   if (host->stat_irq)
    enable_irq(host->stat_irq);
  else if (host->stat_irq)
   enable_irq(host->stat_irq);
 }
 return 0;
}
