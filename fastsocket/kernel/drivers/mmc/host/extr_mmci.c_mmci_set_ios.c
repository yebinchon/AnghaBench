
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmci_host {scalar_t__ hw_designer; int lock; scalar_t__ base; int pwr; TYPE_1__* plat; int vcc; } ;
struct mmc_ios {int power_mode; scalar_t__ bus_mode; int clock; int vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* translate_vdd ) (int ,int ) ;} ;


 scalar_t__ AMBA_VENDOR_ST ;
 int MCI_OD ;
 int MCI_PWR_ON ;
 int MCI_PWR_UP ;
 int MCI_ROD ;
 scalar_t__ MMCIPOWER ;
 scalar_t__ MMC_BUSMODE_OPENDRAIN ;



 int mmc_dev (struct mmc_host*) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (int ,int ) ;
 int mmci_set_clkreg (struct mmci_host*,int ) ;
 int regulator_disable (int ) ;
 int regulator_is_enabled (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mmci_host *host = mmc_priv(mmc);
 u32 pwr = 0;
 unsigned long flags;

 switch (ios->power_mode) {
 case 130:
  if(host->vcc &&
     regulator_is_enabled(host->vcc))
   regulator_disable(host->vcc);
  break;
 case 128:
  if (!host->vcc && host->plat->translate_vdd)
   pwr |= host->plat->translate_vdd(mmc_dev(mmc), ios->vdd);

  if (host->hw_designer != AMBA_VENDOR_ST) {
   pwr |= MCI_PWR_UP;
   break;
  }
 case 129:
  pwr |= MCI_PWR_ON;
  break;
 }

 if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN) {
  if (host->hw_designer != AMBA_VENDOR_ST)
   pwr |= MCI_ROD;
  else {




   pwr |= MCI_OD;
  }
 }

 spin_lock_irqsave(&host->lock, flags);

 mmci_set_clkreg(host, ios->clock);

 if (host->pwr != pwr) {
  host->pwr = pwr;
  writel(pwr, host->base + MMCIPOWER);
 }

 spin_unlock_irqrestore(&host->lock, flags);
}
