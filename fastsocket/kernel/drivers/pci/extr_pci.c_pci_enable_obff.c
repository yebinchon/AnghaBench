
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {TYPE_1__* bus; } ;
typedef enum pci_obff_signal_type { ____Placeholder_pci_obff_signal_type } pci_obff_signal_type ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int ENOTSUPP ;
 int PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_OBFF_MASK ;
 int PCI_EXP_OBFF_MSGA_EN ;
 int PCI_EXP_OBFF_MSGB_EN ;


 int PCI_EXP_OBFF_WAKE ;
 int PCI_EXP_OBFF_WAKE_EN ;
 int WARN (int,char*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;

int pci_enable_obff(struct pci_dev *dev, enum pci_obff_signal_type type)
{
 u32 cap;
 u16 ctrl;
 int ret;

 pcie_capability_read_dword(dev, PCI_EXP_DEVCAP2, &cap);
 if (!(cap & PCI_EXP_OBFF_MASK))
  return -ENOTSUPP;


 if (dev->bus->self) {
  ret = pci_enable_obff(dev->bus->self, type);
  if (ret)
   return ret;
 }

 pcie_capability_read_word(dev, PCI_EXP_DEVCTL2, &ctrl);
 if (cap & PCI_EXP_OBFF_WAKE)
  ctrl |= PCI_EXP_OBFF_WAKE_EN;
 else {
  switch (type) {
  case 128:
   if (!(ctrl & PCI_EXP_OBFF_WAKE_EN))
    ctrl |= PCI_EXP_OBFF_MSGA_EN;
   break;
  case 129:
   ctrl &= ~PCI_EXP_OBFF_WAKE_EN;
   ctrl |= PCI_EXP_OBFF_MSGB_EN;
   break;
  default:
   WARN(1, "bad OBFF signal type\n");
   return -ENOTSUPP;
  }
 }
 pcie_capability_write_word(dev, PCI_EXP_DEVCTL2, ctrl);

 return 0;
}
