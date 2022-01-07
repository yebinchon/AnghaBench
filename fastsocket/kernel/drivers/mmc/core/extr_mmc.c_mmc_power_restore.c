
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {TYPE_1__* card; int ocr; } ;
struct TYPE_2__ {int state; } ;


 int MMC_STATE_HIGHSPEED ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_init_card (struct mmc_host*,int ,TYPE_1__*) ;
 int mmc_release_host (struct mmc_host*) ;

__attribute__((used)) static void mmc_power_restore(struct mmc_host *host)
{
 host->card->state &= ~MMC_STATE_HIGHSPEED;
 mmc_claim_host(host);
 mmc_init_card(host, host->ocr, host->card);
 mmc_release_host(host);
}
