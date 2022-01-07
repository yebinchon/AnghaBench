
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int detect; int lock; int removed; } ;


 int WARN_ON (int ) ;
 int mmc_schedule_delayed_work (int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mmc_detect_change(struct mmc_host *host, unsigned long delay)
{







 mmc_schedule_delayed_work(&host->detect, delay);
}
