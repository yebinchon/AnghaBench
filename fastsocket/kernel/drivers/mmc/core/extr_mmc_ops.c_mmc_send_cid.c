
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int rca; } ;


 int EINVAL ;
 int MMC_SEND_CID ;
 int be32_to_cpu (int ) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_send_cxd_data (int *,struct mmc_host*,int ,int *,int) ;
 int mmc_send_cxd_native (struct mmc_host*,int,int *,int ) ;

int mmc_send_cid(struct mmc_host *host, u32 *cid)
{
 int ret, i;

 if (!mmc_host_is_spi(host)) {
  if (!host->card)
   return -EINVAL;
  return mmc_send_cxd_native(host, host->card->rca << 16,
    cid, MMC_SEND_CID);
 }

 ret = mmc_send_cxd_data(((void*)0), host, MMC_SEND_CID, cid, 16);
 if (ret)
  return ret;

 for (i = 0;i < 4;i++)
  cid[i] = be32_to_cpu(cid[i]);

 return 0;
}
