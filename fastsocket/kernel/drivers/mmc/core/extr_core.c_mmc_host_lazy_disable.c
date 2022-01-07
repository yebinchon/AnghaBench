
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps; scalar_t__ disable_delay; int disable; int enabled; scalar_t__ nesting_cnt; scalar_t__ en_dis_recurs; } ;


 int MMC_CAP_DISABLE ;
 int mmc_host_do_disable (struct mmc_host*,int) ;
 int mmc_schedule_delayed_work (int *,int ) ;
 int msecs_to_jiffies (scalar_t__) ;

int mmc_host_lazy_disable(struct mmc_host *host)
{
 if (!(host->caps & MMC_CAP_DISABLE))
  return 0;

 if (host->en_dis_recurs)
  return 0;

 if (--host->nesting_cnt)
  return 0;

 if (!host->enabled)
  return 0;

 if (host->disable_delay) {
  mmc_schedule_delayed_work(&host->disable,
    msecs_to_jiffies(host->disable_delay));
  return 0;
 } else
  return mmc_host_do_disable(host, 1);
}
