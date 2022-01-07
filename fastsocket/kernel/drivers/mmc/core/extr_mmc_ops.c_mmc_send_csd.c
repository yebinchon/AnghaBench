
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_card {int rca; int host; } ;


 int MMC_SEND_CSD ;
 int be32_to_cpu (int ) ;
 int mmc_host_is_spi (int ) ;
 int mmc_send_cxd_data (struct mmc_card*,int ,int ,int *,int) ;
 int mmc_send_cxd_native (int ,int,int *,int ) ;

int mmc_send_csd(struct mmc_card *card, u32 *csd)
{
 int ret, i;

 if (!mmc_host_is_spi(card->host))
  return mmc_send_cxd_native(card->host, card->rca << 16,
    csd, MMC_SEND_CSD);

 ret = mmc_send_cxd_data(card, card->host, MMC_SEND_CSD, csd, 16);
 if (ret)
  return ret;

 for (i = 0;i < 4;i++)
  csd[i] = be32_to_cpu(csd[i]);

 return 0;
}
