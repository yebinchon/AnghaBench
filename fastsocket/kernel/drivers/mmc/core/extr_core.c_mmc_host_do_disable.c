
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int en_dis_recurs; scalar_t__ enabled; int disable; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct mmc_host*,int) ;} ;


 int mmc_hostname (struct mmc_host*) ;
 int mmc_schedule_delayed_work (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int pr_debug (char*,int ,int) ;
 int stub1 (struct mmc_host*,int) ;

__attribute__((used)) static int mmc_host_do_disable(struct mmc_host *host, int lazy)
{
 if (host->ops->disable) {
  int err;

  host->en_dis_recurs = 1;
  err = host->ops->disable(host, lazy);
  host->en_dis_recurs = 0;

  if (err < 0) {
   pr_debug("%s: disable error %d\n",
     mmc_hostname(host), err);
   return err;
  }
  if (err > 0) {
   unsigned long delay = msecs_to_jiffies(err);

   mmc_schedule_delayed_work(&host->disable, delay);
  }
 }
 host->enabled = 0;
 return 0;
}
