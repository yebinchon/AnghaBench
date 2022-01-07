
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ version; int lock; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_CTRL_PRESET_VAL_ENABLE ;
 int SDHCI_HOST_CONTROL2 ;
 scalar_t__ SDHCI_SPEC_300 ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdhci_enable_preset_value(struct mmc_host *mmc, bool enable)
{
 struct sdhci_host *host;
 u16 ctrl;
 unsigned long flags;

 host = mmc_priv(mmc);


 if (host->version < SDHCI_SPEC_300)
  return;

 spin_lock_irqsave(&host->lock, flags);

 ctrl = sdhci_readw(host, SDHCI_HOST_CONTROL2);





 if (enable && !(ctrl & SDHCI_CTRL_PRESET_VAL_ENABLE)) {
  ctrl |= SDHCI_CTRL_PRESET_VAL_ENABLE;
  sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);
 } else if (!enable && (ctrl & SDHCI_CTRL_PRESET_VAL_ENABLE)) {
  ctrl &= ~SDHCI_CTRL_PRESET_VAL_ENABLE;
  sdhci_writew(host, ctrl, SDHCI_HOST_CONTROL2);
 }

 spin_unlock_irqrestore(&host->lock, flags);
}
