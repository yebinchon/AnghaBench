
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_card {int host; } ;


 int MMC_SEND_EXT_CSD ;
 int mmc_send_cxd_data (struct mmc_card*,int ,int ,int *,int) ;

int mmc_send_ext_csd(struct mmc_card *card, u8 *ext_csd)
{
 return mmc_send_cxd_data(card, card->host, MMC_SEND_EXT_CSD,
   ext_csd, 512);
}
