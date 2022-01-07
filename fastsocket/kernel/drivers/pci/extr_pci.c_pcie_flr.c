
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;


 int ENOTTY ;
 int PCI_EXP_DEVCAP ;
 int PCI_EXP_DEVCAP_FLR ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_BCR_FLR ;
 int PCI_EXP_DEVSTA ;
 int PCI_EXP_DEVSTA_TRPND ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static int pcie_flr(struct pci_dev *dev, int probe)
{
 int i;
 u32 cap;
 u16 status;

 pcie_capability_read_dword(dev, PCI_EXP_DEVCAP, &cap);
 if (!(cap & PCI_EXP_DEVCAP_FLR))
  return -ENOTTY;

 if (probe)
  return 0;


 for (i = 0; i < 4; i++) {
  if (i)
   msleep((1 << (i - 1)) * 100);

  pcie_capability_read_word(dev, PCI_EXP_DEVSTA, &status);
  if (!(status & PCI_EXP_DEVSTA_TRPND))
   goto clear;
 }

 dev_err(&dev->dev, "transaction is not cleared; "
   "proceeding with reset anyway\n");

clear:
 pcie_capability_set_word(dev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_BCR_FLR);

 msleep(100);

 return 0;
}
