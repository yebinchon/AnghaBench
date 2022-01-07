
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int mmc; int fclk; } ;
struct mmc_host {int dummy; } ;


 int clk_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int omap_hsmmc_context_restore (struct omap_hsmmc_host*) ;

__attribute__((used)) static int omap_hsmmc_enable_fclk(struct mmc_host *mmc)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);
 int err;

 err = clk_enable(host->fclk);
 if (err)
  return err;
 dev_dbg(mmc_dev(host->mmc), "mmc_fclk: enabled\n");
 omap_hsmmc_context_restore(host);
 return 0;
}
