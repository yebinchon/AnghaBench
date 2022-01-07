
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int wakeup_prepared; int pm_cap; int d1_support; int d2_support; int pme_support; int dev; } ;


 int KERN_DEBUG ;
 int PCI_CAP_ID_PM ;
 int PCI_PM_CAP_D1 ;
 int PCI_PM_CAP_D2 ;
 int PCI_PM_CAP_PME_D0 ;
 int PCI_PM_CAP_PME_D1 ;
 int PCI_PM_CAP_PME_D2 ;
 int PCI_PM_CAP_PME_D3 ;
 int PCI_PM_CAP_PME_D3cold ;
 int PCI_PM_CAP_PME_MASK ;
 int PCI_PM_CAP_PME_SHIFT ;
 int PCI_PM_CAP_VER_MASK ;
 scalar_t__ PCI_PM_PMC ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,char*,char*,char*,char*,char*) ;
 int dev_printk (int ,int *,char*,char*,char*) ;
 int device_set_wakeup_capable (int *,int) ;
 int device_set_wakeup_enable (int *,int) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_no_d1d2 (struct pci_dev*) ;
 int pci_pme_active (struct pci_dev*,int) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;

void pci_pm_init(struct pci_dev *dev)
{
 int pm;
 u16 pmc;

 dev->wakeup_prepared = 0;
 dev->pm_cap = 0;


 pm = pci_find_capability(dev, PCI_CAP_ID_PM);
 if (!pm)
  return;

 pci_read_config_word(dev, pm + PCI_PM_PMC, &pmc);

 if ((pmc & PCI_PM_CAP_VER_MASK) > 3) {
  dev_err(&dev->dev, "unsupported PM cap regs version (%u)\n",
   pmc & PCI_PM_CAP_VER_MASK);
  return;
 }

 dev->pm_cap = pm;

 dev->d1_support = 0;
 dev->d2_support = 0;
 if (!pci_no_d1d2(dev)) {
  if (pmc & PCI_PM_CAP_D1)
   dev->d1_support = 1;
  if (pmc & PCI_PM_CAP_D2)
   dev->d2_support = 1;

  if (dev->d1_support || dev->d2_support)
   dev_printk(KERN_DEBUG, &dev->dev, "supports%s%s\n",
       dev->d1_support ? " D1" : "",
       dev->d2_support ? " D2" : "");
 }

 pmc &= PCI_PM_CAP_PME_MASK;
 if (pmc) {
  dev_info(&dev->dev, "PME# supported from%s%s%s%s%s\n",
    (pmc & PCI_PM_CAP_PME_D0) ? " D0" : "",
    (pmc & PCI_PM_CAP_PME_D1) ? " D1" : "",
    (pmc & PCI_PM_CAP_PME_D2) ? " D2" : "",
    (pmc & PCI_PM_CAP_PME_D3) ? " D3hot" : "",
    (pmc & PCI_PM_CAP_PME_D3cold) ? " D3cold" : "");
  dev->pme_support = pmc >> PCI_PM_CAP_PME_SHIFT;




  device_set_wakeup_capable(&dev->dev, 1);
  device_set_wakeup_enable(&dev->dev, 0);

  pci_pme_active(dev, 0);
 } else {
  dev->pme_support = 0;
 }
}
