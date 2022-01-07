
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int removed; int caps; int card; TYPE_1__* bus_ops; int bus_dead; int detect; int disable; int lock; } ;
struct TYPE_2__ {int (* remove ) (struct mmc_host*) ;} ;


 int BUG_ON (int ) ;
 int MMC_CAP_DISABLE ;
 int cancel_delayed_work (int *) ;
 int mmc_bus_get (struct mmc_host*) ;
 int mmc_bus_put (struct mmc_host*) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_flush_scheduled_work () ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mmc_host*) ;

void mmc_stop_host(struct mmc_host *host)
{







 if (host->caps & MMC_CAP_DISABLE)
  cancel_delayed_work(&host->disable);
 cancel_delayed_work(&host->detect);
 mmc_flush_scheduled_work();

 mmc_bus_get(host);
 if (host->bus_ops && !host->bus_dead) {
  if (host->bus_ops->remove)
   host->bus_ops->remove(host);

  mmc_claim_host(host);
  mmc_detach_bus(host);
  mmc_release_host(host);
  mmc_bus_put(host);
  return;
 }
 mmc_bus_put(host);

 BUG_ON(host->card);

 mmc_power_off(host);
}
