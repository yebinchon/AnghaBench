
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {struct mmc_card* info; } ;
struct device {int dummy; } ;


 struct mmc_card* dev_to_mmc_card (struct device*) ;
 int kfree (struct mmc_card*) ;
 int sdio_free_common_cis (struct mmc_card*) ;

__attribute__((used)) static void mmc_release_card(struct device *dev)
{
 struct mmc_card *card = dev_to_mmc_card(dev);

 sdio_free_common_cis(card);

 if (card->info)
  kfree(card->info);

 kfree(card);
}
