
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int mmc; int fclk; } ;
struct mmc_host {int dummy; } ;


 int clk_disable (int ) ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int omap_hsmmc_context_save (struct omap_hsmmc_host*) ;

__attribute__((used)) static int omap_hsmmc_disable_fclk(struct mmc_host *mmc, int lazy)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);

 omap_hsmmc_context_save(host);
 clk_disable(host->fclk);
 dev_dbg(mmc_dev(host->mmc), "mmc_fclk: disabled\n");
 return 0;
}
