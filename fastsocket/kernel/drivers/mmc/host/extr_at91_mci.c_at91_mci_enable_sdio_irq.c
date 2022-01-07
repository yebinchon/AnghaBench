
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct at91mci_host {TYPE_1__* board; int mmc; } ;
struct TYPE_2__ {scalar_t__ slot_b; } ;


 int AT91_MCI_IDR ;
 int AT91_MCI_IER ;
 int AT91_MCI_SDIOIRQA ;
 int AT91_MCI_SDIOIRQB ;
 int at91_mci_write (struct at91mci_host*,int ,int ) ;
 int mmc_hostname (int ) ;
 struct at91mci_host* mmc_priv (struct mmc_host*) ;
 int pr_debug (char*,int ,char,char*) ;

__attribute__((used)) static void at91_mci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct at91mci_host *host = mmc_priv(mmc);

 pr_debug("%s: sdio_irq %c : %s\n", mmc_hostname(host->mmc),
  host->board->slot_b ? 'B':'A', enable ? "enable" : "disable");
 at91_mci_write(host, enable ? AT91_MCI_IER : AT91_MCI_IDR,
  host->board->slot_b ? AT91_MCI_SDIOIRQB : AT91_MCI_SDIOIRQA);

}
