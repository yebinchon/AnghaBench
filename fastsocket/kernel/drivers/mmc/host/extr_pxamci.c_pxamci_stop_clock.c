
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_host {int mmc; scalar_t__ base; } ;


 scalar_t__ MMC_STAT ;
 scalar_t__ MMC_STRPCL ;
 int STAT_CLK_EN ;
 int STOP_CLOCK ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pxamci_stop_clock(struct pxamci_host *host)
{
 if (readl(host->base + MMC_STAT) & STAT_CLK_EN) {
  unsigned long timeout = 10000;
  unsigned int v;

  writel(STOP_CLOCK, host->base + MMC_STRPCL);

  do {
   v = readl(host->base + MMC_STAT);
   if (!(v & STAT_CLK_EN))
    break;
   udelay(1);
  } while (timeout--);

  if (v & STAT_CLK_EN)
   dev_err(mmc_dev(host->mmc), "unable to stop clock\n");
 }
}
