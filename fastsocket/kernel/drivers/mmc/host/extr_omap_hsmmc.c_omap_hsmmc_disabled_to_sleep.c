
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct omap_hsmmc_host {int dpm_state; int slot_id; int dev; TYPE_1__* mmc; int fclk; } ;
struct TYPE_8__ {scalar_t__ (* get_cover_state ) (int ,int ) ;scalar_t__ card_detect; int (* set_sleep ) (int ,int ,int,int ,int) ;} ;
struct TYPE_7__ {int caps; } ;


 int CARDSLEEP ;
 int MMC_CAP_NONREMOVABLE ;
 int OMAP_MMC_OFF_TIMEOUT ;
 int REGSLEEP ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*,char*) ;
 scalar_t__ mmc_card_can_sleep (TYPE_1__*) ;
 int mmc_card_sleep (TYPE_1__*) ;
 int mmc_dev (TYPE_1__*) ;
 int mmc_release_host (TYPE_1__*) ;
 TYPE_2__ mmc_slot (struct omap_hsmmc_host*) ;
 int mmc_try_claim_host (TYPE_1__*) ;
 int msecs_to_jiffies (int ) ;
 int omap_hsmmc_context_restore (struct omap_hsmmc_host*) ;
 int stub1 (int ,int ,int,int ,int) ;
 scalar_t__ stub2 (int ,int ) ;

__attribute__((used)) static int omap_hsmmc_disabled_to_sleep(struct omap_hsmmc_host *host)
{
 int err, new_state;

 if (!mmc_try_claim_host(host->mmc))
  return 0;

 clk_enable(host->fclk);
 omap_hsmmc_context_restore(host);
 if (mmc_card_can_sleep(host->mmc)) {
  err = mmc_card_sleep(host->mmc);
  if (err < 0) {
   clk_disable(host->fclk);
   mmc_release_host(host->mmc);
   return err;
  }
  new_state = CARDSLEEP;
 } else {
  new_state = REGSLEEP;
 }
 if (mmc_slot(host).set_sleep)
  mmc_slot(host).set_sleep(host->dev, host->slot_id, 1, 0,
      new_state == CARDSLEEP);

 clk_disable(host->fclk);
 host->dpm_state = new_state;

 mmc_release_host(host->mmc);

 dev_dbg(mmc_dev(host->mmc), "DISABLED -> %s\n",
  host->dpm_state == CARDSLEEP ? "CARDSLEEP" : "REGSLEEP");

 if ((host->mmc->caps & MMC_CAP_NONREMOVABLE) ||
     mmc_slot(host).card_detect ||
     (mmc_slot(host).get_cover_state &&
      mmc_slot(host).get_cover_state(host->dev, host->slot_id)))
  return msecs_to_jiffies(OMAP_MMC_OFF_TIMEOUT);

 return 0;
}
