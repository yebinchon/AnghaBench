
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcilst_struct {unsigned char pci_bus; unsigned char pci_slot; unsigned char pci_func; unsigned int irq; int * io_addr; } ;
typedef int resource_size_t ;



__attribute__((used)) static int pci_card_data(struct pcilst_struct *inova,
    unsigned char *pci_bus, unsigned char *pci_slot,
    unsigned char *pci_func, resource_size_t * io_addr,
    unsigned int *irq)
{
 int i;

 if (!inova)
  return -1;
 *pci_bus = inova->pci_bus;
 *pci_slot = inova->pci_slot;
 *pci_func = inova->pci_func;
 for (i = 0; i < 5; i++)
  io_addr[i] = inova->io_addr[i];
 *irq = inova->irq;
 return 0;
}
