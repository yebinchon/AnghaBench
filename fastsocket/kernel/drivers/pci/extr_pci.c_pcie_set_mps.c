
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int ffs (int) ;
 int is_power_of_2 (int) ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int) ;
 int rh_get_mpss (struct pci_dev*) ;

int pcie_set_mps(struct pci_dev *dev, int mps)
{
 u16 v;

 if (mps < 128 || mps > 4096 || !is_power_of_2(mps))
  return -EINVAL;

 v = ffs(mps) - 8;
 if (v > rh_get_mpss(dev))
  return -EINVAL;
 v <<= 5;

 return pcie_capability_clear_and_set_word(dev, PCI_EXP_DEVCTL,
        PCI_EXP_DEVCTL_PAYLOAD, v);
}
