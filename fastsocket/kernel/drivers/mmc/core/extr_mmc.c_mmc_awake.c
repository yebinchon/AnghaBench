
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {struct mmc_card* card; } ;
struct TYPE_2__ {int rev; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 int ENOSYS ;
 int mmc_card_sleepawake (struct mmc_host*,int ) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static int mmc_awake(struct mmc_host *host)
{
 struct mmc_card *card = host->card;
 int err = -ENOSYS;

 if (card && card->ext_csd.rev >= 3) {
  err = mmc_card_sleepawake(host, 0);
  if (err < 0)
   pr_debug("%s: Error %d while awaking sleeping card",
     mmc_hostname(host), err);
 }

 return err;
}
