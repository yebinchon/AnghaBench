
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int host; } ;


 int MMC_TIMING_SD_HS ;
 int mmc_card_set_highspeed (struct mmc_card*) ;
 int mmc_set_timing (int ,int ) ;

void mmc_sd_go_highspeed(struct mmc_card *card)
{
 mmc_card_set_highspeed(card);
 mmc_set_timing(card->host, MMC_TIMING_SD_HS);
}
