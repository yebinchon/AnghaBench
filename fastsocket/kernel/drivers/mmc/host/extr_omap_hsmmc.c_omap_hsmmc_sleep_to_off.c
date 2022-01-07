
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct omap_hsmmc_host {scalar_t__ dpm_state; TYPE_1__* mmc; int power_mode; scalar_t__ vdd; int slot_id; int dev; } ;
struct TYPE_6__ {int (* set_power ) (int ,int ,int ,int ) ;scalar_t__ (* get_cover_state ) (int ,int ) ;scalar_t__ card_detect; } ;
struct TYPE_5__ {int caps; } ;


 scalar_t__ CARDSLEEP ;
 int MMC_CAP_NONREMOVABLE ;
 int MMC_POWER_OFF ;
 scalar_t__ OFF ;
 int dev_dbg (int ,char*,char*) ;
 int mmc_dev (TYPE_1__*) ;
 int mmc_release_host (TYPE_1__*) ;
 TYPE_2__ mmc_slot (struct omap_hsmmc_host*) ;
 int mmc_try_claim_host (TYPE_1__*) ;
 scalar_t__ stub1 (int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static int omap_hsmmc_sleep_to_off(struct omap_hsmmc_host *host)
{
 if (!mmc_try_claim_host(host->mmc))
  return 0;

 if (!((host->mmc->caps & MMC_CAP_NONREMOVABLE) ||
       mmc_slot(host).card_detect ||
       (mmc_slot(host).get_cover_state &&
        mmc_slot(host).get_cover_state(host->dev, host->slot_id)))) {
  mmc_release_host(host->mmc);
  return 0;
 }

 mmc_slot(host).set_power(host->dev, host->slot_id, 0, 0);
 host->vdd = 0;
 host->power_mode = MMC_POWER_OFF;

 dev_dbg(mmc_dev(host->mmc), "%s -> OFF\n",
  host->dpm_state == CARDSLEEP ? "CARDSLEEP" : "REGSLEEP");

 host->dpm_state = OFF;

 mmc_release_host(host->mmc);

 return 0;
}
