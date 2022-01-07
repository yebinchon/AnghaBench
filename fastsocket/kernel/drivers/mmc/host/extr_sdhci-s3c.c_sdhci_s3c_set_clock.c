
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_s3c {int cur_clk; TYPE_2__* pdev; TYPE_1__* pdata; struct clk** clk_bus; } ;
struct sdhci_host {scalar_t__ ioaddr; int timeout_clk; int max_clk; } ;
struct mmc_ios {unsigned int clock; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* cfg_card ) (TYPE_2__*,scalar_t__,struct mmc_ios*,int *) ;} ;


 int MAX_BUS_CLK ;
 scalar_t__ S3C_SDHCI_CONTROL2 ;
 int S3C_SDHCI_CTRL2_SELBASECLK_MASK ;
 int S3C_SDHCI_CTRL2_SELBASECLK_SHIFT ;
 scalar_t__ SDHCI_CLOCK_CONTROL ;
 unsigned int UINT_MAX ;
 int clk_get_rate (struct clk*) ;
 int dev_dbg (int *,char*,int,unsigned int,unsigned int) ;
 int readl (scalar_t__) ;
 unsigned int sdhci_s3c_consider_clock (struct sdhci_s3c*,int,unsigned int) ;
 int sdhci_s3c_get_timeout_clk (struct sdhci_host*) ;
 int stub1 (TYPE_2__*,scalar_t__,struct mmc_ios*,int *) ;
 struct sdhci_s3c* to_s3c (struct sdhci_host*) ;
 int writel (int,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_s3c_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_s3c *ourhost = to_s3c(host);
 unsigned int best = UINT_MAX;
 unsigned int delta;
 int best_src = 0;
 int src;
 u32 ctrl;


 if (clock == 0)
  return;

 for (src = 0; src < MAX_BUS_CLK; src++) {
  delta = sdhci_s3c_consider_clock(ourhost, src, clock);
  if (delta < best) {
   best = delta;
   best_src = src;
  }
 }

 dev_dbg(&ourhost->pdev->dev,
  "selected source %d, clock %d, delta %d\n",
   best_src, clock, best);



 if (ourhost->cur_clk != best_src) {
  struct clk *clk = ourhost->clk_bus[best_src];


  writew(0, host->ioaddr + SDHCI_CLOCK_CONTROL);

  ourhost->cur_clk = best_src;
  host->max_clk = clk_get_rate(clk);
  host->timeout_clk = sdhci_s3c_get_timeout_clk(host);

  ctrl = readl(host->ioaddr + S3C_SDHCI_CONTROL2);
  ctrl &= ~S3C_SDHCI_CTRL2_SELBASECLK_MASK;
  ctrl |= best_src << S3C_SDHCI_CTRL2_SELBASECLK_SHIFT;
  writel(ctrl, host->ioaddr + S3C_SDHCI_CONTROL2);
 }



 {
  struct mmc_ios ios;

  ios.clock = clock;

  if (ourhost->pdata->cfg_card)
   (ourhost->pdata->cfg_card)(ourhost->pdev, host->ioaddr,
         &ios, ((void*)0));
 }
}
