
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; scalar_t__ pm_cap; } ;


 int KERN_INFO ;
 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_PME_ENABLE ;
 int PCI_PM_CTRL_PME_STATUS ;
 int dev_printk (int ,int *,char*,char*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

void pci_pme_active(struct pci_dev *dev, bool enable)
{
 u16 pmcsr;

 if (!dev->pm_cap)
  return;

 pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);

 pmcsr |= PCI_PM_CTRL_PME_STATUS | PCI_PM_CTRL_PME_ENABLE;
 if (!enable)
  pmcsr &= ~PCI_PM_CTRL_PME_ENABLE;

 pci_write_config_word(dev, dev->pm_cap + PCI_PM_CTRL, pmcsr);

 dev_printk(KERN_INFO, &dev->dev, "PME# %s\n",
   enable ? "enabled" : "disabled");
}
