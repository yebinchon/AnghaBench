
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int lock; int flags; } ;


 int SDHCI_NEEDS_RETUNING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdhci_tuning_timer(unsigned long data)
{
 struct sdhci_host *host;
 unsigned long flags;

 host = (struct sdhci_host *)data;

 spin_lock_irqsave(&host->lock, flags);

 host->flags |= SDHCI_NEEDS_RETUNING;

 spin_unlock_irqrestore(&host->lock, flags);
}
