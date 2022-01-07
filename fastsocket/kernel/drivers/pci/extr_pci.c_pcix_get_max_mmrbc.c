
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int PCI_CAP_ID_PCIX ;
 scalar_t__ PCI_X_STATUS ;
 int PCI_X_STATUS_MAX_READ ;
 int pci_find_capability (struct pci_dev*,int ) ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

int pcix_get_max_mmrbc(struct pci_dev *dev)
{
 int cap;
 u32 stat;

 cap = pci_find_capability(dev, PCI_CAP_ID_PCIX);
 if (!cap)
  return -EINVAL;

 if (pci_read_config_dword(dev, cap + PCI_X_STATUS, &stat))
  return -EINVAL;

 return 512 << ((stat & PCI_X_STATUS_MAX_READ) >> 21);
}
