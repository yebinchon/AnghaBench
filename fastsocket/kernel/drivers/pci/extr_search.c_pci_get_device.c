
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_ANY_ID ;
 struct pci_dev* pci_get_subsys (unsigned int,unsigned int,int ,int ,struct pci_dev*) ;

struct pci_dev *
pci_get_device(unsigned int vendor, unsigned int device, struct pci_dev *from)
{
 return pci_get_subsys(vendor, device, PCI_ANY_ID, PCI_ANY_ID, from);
}
