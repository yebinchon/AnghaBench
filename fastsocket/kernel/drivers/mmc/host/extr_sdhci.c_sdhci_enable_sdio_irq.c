
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int lock; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_DEVICE_DEAD ;
 int SDHCI_INT_CARD_INT ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int mmiowb () ;
 int sdhci_mask_irqs (struct sdhci_host*,int ) ;
 int sdhci_unmask_irqs (struct sdhci_host*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdhci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct sdhci_host *host;
 unsigned long flags;

 host = mmc_priv(mmc);

 spin_lock_irqsave(&host->lock, flags);

 if (host->flags & SDHCI_DEVICE_DEAD)
  goto out;

 if (enable)
  sdhci_unmask_irqs(host, SDHCI_INT_CARD_INT);
 else
  sdhci_mask_irqs(host, SDHCI_INT_CARD_INT);
out:
 mmiowb();

 spin_unlock_irqrestore(&host->lock, flags);
}
