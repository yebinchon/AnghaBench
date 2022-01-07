
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mmc_card {int host; } ;


 int mmc_claim_host (int ) ;
 int mmc_release_host (int ) ;
 int mmc_send_status (void*,int *) ;

__attribute__((used)) static int mmc_dbg_card_status_get(void *data, u64 *val)
{
 struct mmc_card *card = data;
 u32 status;
 int ret;

 mmc_claim_host(card->host);

 ret = mmc_send_status(data, &status);
 if (!ret)
  *val = status;

 mmc_release_host(card->host);

 return ret;
}
