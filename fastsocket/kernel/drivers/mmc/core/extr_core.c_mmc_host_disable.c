
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; int enabled; scalar_t__ nesting_cnt; scalar_t__ en_dis_recurs; } ;


 int MMC_CAP_DISABLE ;
 int mmc_host_do_disable (struct mmc_host*,int ) ;

int mmc_host_disable(struct mmc_host *host)
{
 int err;

 if (!(host->caps & MMC_CAP_DISABLE))
  return 0;

 if (host->en_dis_recurs)
  return 0;

 if (--host->nesting_cnt)
  return 0;

 if (!host->enabled)
  return 0;

 err = mmc_host_do_disable(host, 0);
 return err;
}
