
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_ios {int bus_width; int power_mode; scalar_t__ clock; } ;
struct mmc_host {int class_dev; } ;
struct atmel_mci_slot {int flags; scalar_t__ clock; int sdc_reg; struct atmel_mci* host; } ;
struct atmel_mci {int mode_reg; int bus_hz; int need_clock_update; int lock; int mck; TYPE_1__** slot; int queue; } ;
struct TYPE_2__ {unsigned int clock; } ;


 int ATMCI_CARD_NEED_INIT ;
 unsigned int ATMEL_MCI_MAX_NR_SLOTS ;
 int CR ;
 int DIV_ROUND_UP (int,int) ;
 int MCI_CR_MCIDIS ;
 int MCI_CR_MCIEN ;
 int MCI_CR_SWRST ;
 int MCI_MR_CLKDIV (int) ;
 int MCI_MR_RDPROOF ;
 int MCI_MR_WRPROOF ;
 int MCI_SDCBUS_1BIT ;
 int MCI_SDCBUS_4BIT ;
 int MCI_SDCBUS_MASK ;



 int MR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_warn (int *,char*,unsigned int,int) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ mci_has_rwproof () ;
 int mci_readl (struct atmel_mci*,int ) ;
 int mci_writel (struct atmel_mci*,int ,int) ;
 struct atmel_mci_slot* mmc_priv (struct mmc_host*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void atmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct atmel_mci_slot *slot = mmc_priv(mmc);
 struct atmel_mci *host = slot->host;
 unsigned int i;

 slot->sdc_reg &= ~MCI_SDCBUS_MASK;
 switch (ios->bus_width) {
 case 130:
  slot->sdc_reg |= MCI_SDCBUS_1BIT;
  break;
 case 129:
  slot->sdc_reg |= MCI_SDCBUS_4BIT;
  break;
 }

 if (ios->clock) {
  unsigned int clock_min = ~0U;
  u32 clkdiv;

  spin_lock_bh(&host->lock);
  if (!host->mode_reg) {
   clk_enable(host->mck);
   mci_writel(host, CR, MCI_CR_SWRST);
   mci_writel(host, CR, MCI_CR_MCIEN);
  }





  slot->clock = ios->clock;
  for (i = 0; i < ATMEL_MCI_MAX_NR_SLOTS; i++) {
   if (host->slot[i] && host->slot[i]->clock
     && host->slot[i]->clock < clock_min)
    clock_min = host->slot[i]->clock;
  }


  clkdiv = DIV_ROUND_UP(host->bus_hz, 2 * clock_min) - 1;
  if (clkdiv > 255) {
   dev_warn(&mmc->class_dev,
    "clock %u too slow; using %lu\n",
    clock_min, host->bus_hz / (2 * 256));
   clkdiv = 255;
  }

  host->mode_reg = MCI_MR_CLKDIV(clkdiv);






  if (mci_has_rwproof())
   host->mode_reg |= (MCI_MR_WRPROOF | MCI_MR_RDPROOF);

  if (list_empty(&host->queue))
   mci_writel(host, MR, host->mode_reg);
  else
   host->need_clock_update = 1;

  spin_unlock_bh(&host->lock);
 } else {
  bool any_slot_active = 0;

  spin_lock_bh(&host->lock);
  slot->clock = 0;
  for (i = 0; i < ATMEL_MCI_MAX_NR_SLOTS; i++) {
   if (host->slot[i] && host->slot[i]->clock) {
    any_slot_active = 1;
    break;
   }
  }
  if (!any_slot_active) {
   mci_writel(host, CR, MCI_CR_MCIDIS);
   if (host->mode_reg) {
    mci_readl(host, MR);
    clk_disable(host->mck);
   }
   host->mode_reg = 0;
  }
  spin_unlock_bh(&host->lock);
 }

 switch (ios->power_mode) {
 case 128:
  set_bit(ATMCI_CARD_NEED_INIT, &slot->flags);
  break;
 default:
  break;
 }
}
