
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int bus_dead; int lock; int bus_ops; int claimed; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int mmc_bus_put (struct mmc_host*) ;
 int mmc_power_off (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mmc_detach_bus(struct mmc_host *host)
{
 unsigned long flags;

 BUG_ON(!host);

 WARN_ON(!host->claimed);
 WARN_ON(!host->bus_ops);

 spin_lock_irqsave(&host->lock, flags);

 host->bus_dead = 1;

 spin_unlock_irqrestore(&host->lock, flags);

 mmc_power_off(host);

 mmc_bus_put(host);
}
