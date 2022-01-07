
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int state; } ;


 int BUG_ON (int) ;
 int MMC_STATE_HIGHSPEED ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_deselect_cards (struct mmc_host*) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;

__attribute__((used)) static int mmc_sd_suspend(struct mmc_host *host)
{
 BUG_ON(!host);
 BUG_ON(!host->card);

 mmc_claim_host(host);
 if (!mmc_host_is_spi(host))
  mmc_deselect_cards(host);
 host->card->state &= ~MMC_STATE_HIGHSPEED;
 mmc_release_host(host);

 return 0;
}
