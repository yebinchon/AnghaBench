
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {scalar_t__ dpm_state; int mmc; int vdd; int slot_id; int dev; int fclk; } ;
struct TYPE_2__ {int (* set_sleep ) (int ,int ,int ,int ,int) ;} ;


 scalar_t__ CARDSLEEP ;
 scalar_t__ ENABLED ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*,char*) ;
 int mmc_card_awake (int ) ;
 scalar_t__ mmc_card_can_sleep (int ) ;
 int mmc_dev (int ) ;
 int mmc_release_host (int ) ;
 TYPE_1__ mmc_slot (struct omap_hsmmc_host*) ;
 int mmc_try_claim_host (int ) ;
 int omap_hsmmc_context_restore (struct omap_hsmmc_host*) ;
 int stub1 (int ,int ,int ,int ,int) ;

__attribute__((used)) static int omap_hsmmc_sleep_to_enabled(struct omap_hsmmc_host *host)
{
 if (!mmc_try_claim_host(host->mmc))
  return 0;

 clk_enable(host->fclk);
 omap_hsmmc_context_restore(host);
 if (mmc_slot(host).set_sleep)
  mmc_slot(host).set_sleep(host->dev, host->slot_id, 0,
    host->vdd, host->dpm_state == CARDSLEEP);
 if (mmc_card_can_sleep(host->mmc))
  mmc_card_awake(host->mmc);

 dev_dbg(mmc_dev(host->mmc), "%s -> ENABLED\n",
  host->dpm_state == CARDSLEEP ? "CARDSLEEP" : "REGSLEEP");

 host->dpm_state = ENABLED;

 mmc_release_host(host->mmc);

 return 0;
}
