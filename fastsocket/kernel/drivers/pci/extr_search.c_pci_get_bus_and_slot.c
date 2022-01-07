
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 struct pci_dev* pci_get_domain_bus_and_slot (int ,unsigned int,unsigned int) ;

struct pci_dev *pci_get_bus_and_slot(unsigned int bus, unsigned int devfn)
{
 return pci_get_domain_bus_and_slot(0, bus, devfn);
}
