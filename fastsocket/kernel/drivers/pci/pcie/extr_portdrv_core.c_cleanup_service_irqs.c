
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ msi_enabled; scalar_t__ msix_enabled; } ;


 int pci_disable_msi (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;

__attribute__((used)) static void cleanup_service_irqs(struct pci_dev *dev)
{
 if (dev->msix_enabled)
  pci_disable_msix(dev);
 else if (dev->msi_enabled)
  pci_disable_msi(dev);
}
