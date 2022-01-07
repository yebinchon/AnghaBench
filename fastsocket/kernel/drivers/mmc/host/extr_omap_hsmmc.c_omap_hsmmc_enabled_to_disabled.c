
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {scalar_t__ power_mode; int mmc; int dpm_state; int fclk; } ;


 int DISABLED ;
 scalar_t__ MMC_POWER_OFF ;
 int OMAP_MMC_SLEEP_TIMEOUT ;
 int clk_disable (int ) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int msecs_to_jiffies (int ) ;
 int omap_hsmmc_context_save (struct omap_hsmmc_host*) ;

__attribute__((used)) static int omap_hsmmc_enabled_to_disabled(struct omap_hsmmc_host *host)
{
 omap_hsmmc_context_save(host);
 clk_disable(host->fclk);
 host->dpm_state = DISABLED;

 dev_dbg(mmc_dev(host->mmc), "ENABLED -> DISABLED\n");

 if (host->power_mode == MMC_POWER_OFF)
  return 0;

 return msecs_to_jiffies(OMAP_MMC_SLEEP_TIMEOUT);
}
