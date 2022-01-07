
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int PCI_EXP_SLTCTL ;
 scalar_t__ PCI_EXP_SLTSTA_PDS ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_cap (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,scalar_t__*) ;
 scalar_t__ pcie_capability_reg_implemented (struct pci_dev*,int) ;

int pcie_capability_read_dword(struct pci_dev *dev, int pos, u32 *val)
{
 int ret;

 *val = 0;
 if (pos & 3)
  return -EINVAL;

 if (pcie_capability_reg_implemented(dev, pos)) {
  ret = pci_read_config_dword(dev, pci_pcie_cap(dev) + pos, val);





  if (ret)
   *val = 0;
  return ret;
 }

 if (pci_is_pcie(dev) && pos == PCI_EXP_SLTCTL &&
   pci_pcie_type(dev) == PCI_EXP_TYPE_DOWNSTREAM) {
  *val = PCI_EXP_SLTSTA_PDS;
 }

 return 0;
}
