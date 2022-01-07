
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; int en_dis_recurs; int enabled; TYPE_1__* ops; int disable; int nesting_cnt; } ;
struct TYPE_2__ {int (* enable ) (struct mmc_host*) ;} ;


 int MMC_CAP_DISABLE ;
 int cancel_delayed_work_sync (int *) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_debug (char*,int ,int) ;
 int stub1 (struct mmc_host*) ;

int mmc_host_enable(struct mmc_host *host)
{
 if (!(host->caps & MMC_CAP_DISABLE))
  return 0;

 if (host->en_dis_recurs)
  return 0;

 if (host->nesting_cnt++)
  return 0;

 cancel_delayed_work_sync(&host->disable);

 if (host->enabled)
  return 0;

 if (host->ops->enable) {
  int err;

  host->en_dis_recurs = 1;
  err = host->ops->enable(host);
  host->en_dis_recurs = 0;

  if (err) {
   pr_debug("%s: enable error %d\n",
     mmc_hostname(host), err);
   return err;
  }
 }
 host->enabled = 1;
 return 0;
}
