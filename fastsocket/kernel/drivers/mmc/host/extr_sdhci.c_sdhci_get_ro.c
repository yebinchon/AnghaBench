
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int quirks; int lock; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_DEVICE_DEAD ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_QUIRK_INVERTED_WRITE_PROTECT ;
 int SDHCI_WRITE_PROTECT ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sdhci_get_ro(struct mmc_host *mmc)
{
 struct sdhci_host *host;
 unsigned long flags;
 int present;

 host = mmc_priv(mmc);

 spin_lock_irqsave(&host->lock, flags);

 if (host->flags & SDHCI_DEVICE_DEAD)
  present = 0;
 else
  present = sdhci_readl(host, SDHCI_PRESENT_STATE);

 spin_unlock_irqrestore(&host->lock, flags);

 if (host->quirks & SDHCI_QUIRK_INVERTED_WRITE_PROTECT)
  return !!(present & SDHCI_WRITE_PROTECT);
 return !(present & SDHCI_WRITE_PROTECT);
}
