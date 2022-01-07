
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;
struct mmc_card {int raw_csd; } ;


 int mmc_decode_csd (struct mmc_card*) ;
 int mmc_send_csd (struct mmc_card*,int ) ;

int mmc_sd_get_csd(struct mmc_host *host, struct mmc_card *card)
{
 int err;




 err = mmc_send_csd(card, card->raw_csd);
 if (err)
  return err;

 err = mmc_decode_csd(card);
 if (err)
  return err;

 return 0;
}
