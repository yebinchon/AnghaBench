
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_ANY_ID ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_subsys (unsigned int,unsigned int,int ,int ,struct pci_dev*) ;

struct pci_dev *pci_find_device(unsigned int vendor, unsigned int device,
    struct pci_dev *from)
{
 struct pci_dev *pdev;

 pci_dev_get(from);
 pdev = pci_get_subsys(vendor, device, PCI_ANY_ID, PCI_ANY_ID, from);
 pci_dev_put(pdev);
 return pdev;
}
