
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct au1xmmc_host {int mmc; TYPE_1__* platdata; } ;
struct TYPE_2__ {int (* card_inserted ) (int ) ;} ;


 int ENOSYS ;
 struct au1xmmc_host* mmc_priv (struct mmc_host*) ;
 int stub1 (int ) ;

__attribute__((used)) static int au1xmmc_card_inserted(struct mmc_host *mmc)
{
 struct au1xmmc_host *host = mmc_priv(mmc);

 if (host->platdata && host->platdata->card_inserted)
  return !!host->platdata->card_inserted(host->mmc);

 return -ENOSYS;
}
