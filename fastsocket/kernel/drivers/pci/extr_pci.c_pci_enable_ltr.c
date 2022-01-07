
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; int devfn; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_LTR_EN ;
 scalar_t__ PCI_FUNC (int ) ;
 int pci_ltr_supported (struct pci_dev*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

int pci_enable_ltr(struct pci_dev *dev)
{
 int ret;


 if (PCI_FUNC(dev->devfn) != 0)
  return -EINVAL;

 if (!pci_ltr_supported(dev))
  return -ENOTSUPP;


 if (dev->bus->self) {
  ret = pci_enable_ltr(dev->bus->self);
  if (ret)
   return ret;
 }

 return pcie_capability_set_word(dev, PCI_EXP_DEVCTL2, PCI_EXP_LTR_EN);
}
