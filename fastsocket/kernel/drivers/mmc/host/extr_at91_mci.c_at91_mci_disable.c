
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91mci_host {int dummy; } ;


 int AT91_MCI_CR ;
 int AT91_MCI_MCIDIS ;
 int AT91_MCI_SWRST ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;

__attribute__((used)) static void at91_mci_disable(struct at91mci_host *host)
{
 at91_mci_write(host, AT91_MCI_CR, AT91_MCI_MCIDIS | AT91_MCI_SWRST);
}
