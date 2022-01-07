
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;
 int PCI_EXT_CAP_ID_SRIOV ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int sriov_init (struct pci_dev*,int) ;

int pci_iov_init(struct pci_dev *dev)
{
 int pos;

 if (!pci_is_pcie(dev))
  return -ENODEV;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_SRIOV);
 if (pos)
  return sriov_init(dev, pos);

 return -ENODEV;
}
