
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCI_ASSIGN_ALL_BUSSES ;
 int pci_probe ;

unsigned int pcibios_assign_all_busses(void)
{
 return (pci_probe & PCI_ASSIGN_ALL_BUSSES) ? 1 : 0;
}
