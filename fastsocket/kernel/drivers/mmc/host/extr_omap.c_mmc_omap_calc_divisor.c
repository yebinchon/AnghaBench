
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_slot {int fclk_freq; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int fclk; } ;
struct mmc_ios {int clock; scalar_t__ bus_width; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ MMC_BUS_WIDTH_4 ;
 int clk_get_rate (int ) ;
 struct mmc_omap_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static int mmc_omap_calc_divisor(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mmc_omap_slot *slot = mmc_priv(mmc);
 struct mmc_omap_host *host = slot->host;
 int func_clk_rate = clk_get_rate(host->fclk);
 int dsor;

 if (ios->clock == 0)
  return 0;

 dsor = func_clk_rate / ios->clock;
 if (dsor < 1)
  dsor = 1;

 if (func_clk_rate / dsor > ios->clock)
  dsor++;

 if (dsor > 250)
  dsor = 250;

 slot->fclk_freq = func_clk_rate / dsor;

 if (ios->bus_width == MMC_BUS_WIDTH_4)
  dsor |= 1 << 15;

 return dsor;
}
