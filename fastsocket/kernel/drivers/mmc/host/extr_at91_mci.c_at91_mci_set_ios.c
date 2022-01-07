
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_ios {int clock; scalar_t__ bus_width; int power_mode; int bus_mode; } ;
struct mmc_host {int dummy; } ;
struct at91mci_host {TYPE_1__* board; int bus_mode; int mci_clk; } ;
struct TYPE_2__ {scalar_t__ vcc_pin; scalar_t__ wire4; } ;


 int AT91_MCI_CLKDIV ;
 int AT91_MCI_CR ;
 int AT91_MCI_MCIDIS ;
 int AT91_MCI_MCIEN ;
 int AT91_MCI_MR ;
 int AT91_MCI_SDCBUS ;
 int AT91_MCI_SDCR ;
 scalar_t__ MMC_BUS_WIDTH_4 ;



 int WARN_ON (int) ;
 int at91_mci_read (struct at91mci_host*,int ) ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;
 unsigned long clk_get_rate (int ) ;
 int gpio_set_value (scalar_t__,int) ;
 struct at91mci_host* mmc_priv (struct mmc_host*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void at91_mci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 int clkdiv;
 struct at91mci_host *host = mmc_priv(mmc);
 unsigned long at91_master_clock = clk_get_rate(host->mci_clk);

 host->bus_mode = ios->bus_mode;

 if (ios->clock == 0) {

  at91_mci_write(host, AT91_MCI_CR, AT91_MCI_MCIDIS);
  clkdiv = 0;
 }
 else {

  at91_mci_write(host, AT91_MCI_CR, AT91_MCI_MCIEN);

  if ((at91_master_clock % (ios->clock * 2)) == 0)
   clkdiv = ((at91_master_clock / ios->clock) / 2) - 1;
  else
   clkdiv = (at91_master_clock / ios->clock) / 2;

  pr_debug("clkdiv = %d. mcck = %ld\n", clkdiv,
   at91_master_clock / (2 * (clkdiv + 1)));
 }
 if (ios->bus_width == MMC_BUS_WIDTH_4 && host->board->wire4) {
  pr_debug("MMC: Setting controller bus width to 4\n");
  at91_mci_write(host, AT91_MCI_SDCR, at91_mci_read(host, AT91_MCI_SDCR) | AT91_MCI_SDCBUS);
 }
 else {
  pr_debug("MMC: Setting controller bus width to 1\n");
  at91_mci_write(host, AT91_MCI_SDCR, at91_mci_read(host, AT91_MCI_SDCR) & ~AT91_MCI_SDCBUS);
 }


 at91_mci_write(host, AT91_MCI_MR, (at91_mci_read(host, AT91_MCI_MR) & ~AT91_MCI_CLKDIV) | clkdiv);


 if (host->board->vcc_pin) {
  switch (ios->power_mode) {
   case 130:
    gpio_set_value(host->board->vcc_pin, 0);
    break;
   case 128:
    gpio_set_value(host->board->vcc_pin, 1);
    break;
   case 129:
    break;
   default:
    WARN_ON(1);
  }
 }
}
