
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;


 int free_msi_irqs (struct pci_dev*) ;
 int pci_msi_enable ;

void msi_remove_pci_irq_vectors(struct pci_dev *dev)
{
 if (!pci_msi_enable || !dev)
  return;

 if (dev->msi_enabled || dev->msix_enabled)
  free_msi_irqs(dev);
}
