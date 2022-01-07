
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int max_dtr; } ;
struct TYPE_3__ {unsigned int hs_max_dtr; } ;
struct mmc_card {TYPE_2__ csd; TYPE_1__ sw_caps; } ;


 scalar_t__ mmc_card_highspeed (struct mmc_card*) ;

unsigned mmc_sd_get_max_clock(struct mmc_card *card)
{
 unsigned max_dtr = (unsigned int)-1;

 if (mmc_card_highspeed(card)) {
  if (max_dtr > card->sw_caps.hs_max_dtr)
   max_dtr = card->sw_caps.hs_max_dtr;
 } else if (max_dtr > card->csd.max_dtr) {
  max_dtr = card->csd.max_dtr;
 }

 return max_dtr;
}
