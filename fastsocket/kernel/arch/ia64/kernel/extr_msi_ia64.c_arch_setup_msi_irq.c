
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct msi_desc {int dummy; } ;


 int ia64_setup_msi_irq (struct pci_dev*,struct msi_desc*) ;
 int platform_setup_msi_irq (struct pci_dev*,struct msi_desc*) ;

int arch_setup_msi_irq(struct pci_dev *pdev, struct msi_desc *desc)
{
 if (platform_setup_msi_irq)
  return platform_setup_msi_irq(pdev, desc);

 return ia64_setup_msi_irq(pdev, desc);
}
