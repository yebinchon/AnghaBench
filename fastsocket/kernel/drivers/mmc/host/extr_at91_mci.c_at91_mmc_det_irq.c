
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91mci_host {int present; int mmc; } ;
typedef int irqreturn_t ;


 int AT91_MCI_SDCBUS ;
 int AT91_MCI_SDCR ;
 int IRQ_HANDLED ;
 int at91_mci_read (struct at91mci_host*,int ) ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;
 int gpio_get_value (int ) ;
 int irq_to_gpio (int) ;
 int mmc_detect_change (int ,int ) ;
 int mmc_hostname (int ) ;
 int msecs_to_jiffies (int) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static irqreturn_t at91_mmc_det_irq(int irq, void *_host)
{
 struct at91mci_host *host = _host;
 int present = !gpio_get_value(irq_to_gpio(irq));





 if (present != host->present) {
  host->present = present;
  pr_debug("%s: card %s\n", mmc_hostname(host->mmc),
   present ? "insert" : "remove");
  if (!present) {
   pr_debug("****** Resetting SD-card bus width ******\n");
   at91_mci_write(host, AT91_MCI_SDCR, at91_mci_read(host, AT91_MCI_SDCR) & ~AT91_MCI_SDCBUS);
  }
  mmc_detect_change(host->mmc, msecs_to_jiffies(100));
 }
 return IRQ_HANDLED;
}
