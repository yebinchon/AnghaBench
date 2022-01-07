
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91mci_host {int dummy; } ;


 int AT91_MCI_CR ;
 int AT91_MCI_DTOR ;
 int AT91_MCI_IDR ;
 int AT91_MCI_IER ;
 int AT91_MCI_IMR ;
 int AT91_MCI_MCIDIS ;
 int AT91_MCI_MCIEN ;
 int AT91_MCI_MR ;
 int AT91_MCI_SDCR ;
 int AT91_MCI_SR ;
 int AT91_MCI_SWRST ;
 int at91_mci_read (struct at91mci_host*,int ) ;
 int at91_mci_write (struct at91mci_host*,int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void at91_reset_host(struct at91mci_host *host)
{
 unsigned long flags;
 u32 mr;
 u32 sdcr;
 u32 dtor;
 u32 imr;

 local_irq_save(flags);
 imr = at91_mci_read(host, AT91_MCI_IMR);

 at91_mci_write(host, AT91_MCI_IDR, 0xffffffff);


 mr = at91_mci_read(host, AT91_MCI_MR) & 0x7fff;
 sdcr = at91_mci_read(host, AT91_MCI_SDCR);
 dtor = at91_mci_read(host, AT91_MCI_DTOR);


 at91_mci_write(host, AT91_MCI_CR, AT91_MCI_MCIDIS | AT91_MCI_SWRST);


 at91_mci_write(host, AT91_MCI_CR, AT91_MCI_MCIEN);
 at91_mci_write(host, AT91_MCI_MR, mr);
 at91_mci_write(host, AT91_MCI_SDCR, sdcr);
 at91_mci_write(host, AT91_MCI_DTOR, dtor);
 at91_mci_write(host, AT91_MCI_IER, imr);


 at91_mci_read(host, AT91_MCI_SR);

 local_irq_restore(flags);
}
