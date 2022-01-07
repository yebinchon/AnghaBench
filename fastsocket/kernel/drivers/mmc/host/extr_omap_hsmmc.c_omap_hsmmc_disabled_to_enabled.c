
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int mmc; int dpm_state; int fclk; } ;


 int ENABLED ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int omap_hsmmc_context_restore (struct omap_hsmmc_host*) ;

__attribute__((used)) static int omap_hsmmc_disabled_to_enabled(struct omap_hsmmc_host *host)
{
 int err;

 err = clk_enable(host->fclk);
 if (err < 0)
  return err;

 omap_hsmmc_context_restore(host);
 host->dpm_state = ENABLED;

 dev_dbg(mmc_dev(host->mmc), "DISABLED -> ENABLED\n");

 return 0;
}
