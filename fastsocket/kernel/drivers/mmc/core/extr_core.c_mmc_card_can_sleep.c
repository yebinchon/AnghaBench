
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {struct mmc_card* card; } ;
struct TYPE_2__ {int rev; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 scalar_t__ mmc_card_mmc (struct mmc_card*) ;

int mmc_card_can_sleep(struct mmc_host *host)
{
 struct mmc_card *card = host->card;

 if (card && mmc_card_mmc(card) && card->ext_csd.rev >= 3)
  return 1;
 return 0;
}
