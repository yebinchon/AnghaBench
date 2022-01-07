
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {unsigned char pci_bus; unsigned char pci_slot; unsigned char pci_func; unsigned int irq; int * io_addr; } ;
typedef int resource_size_t ;



int i_pci_card_data(struct pcilst_struct *amcc,
      unsigned char *pci_bus, unsigned char *pci_slot,
      unsigned char *pci_func, resource_size_t * io_addr,
      unsigned int *irq)
{
 int i;

 if (!amcc)
  return -1;
 *pci_bus = amcc->pci_bus;
 *pci_slot = amcc->pci_slot;
 *pci_func = amcc->pci_func;
 for (i = 0; i < 5; i++)
  io_addr[i] = amcc->io_addr[i];
 *irq = amcc->irq;
 return 0;
}
