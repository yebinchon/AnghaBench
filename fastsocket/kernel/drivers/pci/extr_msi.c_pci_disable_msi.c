
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev_rh1 {int * msi_kset; } ;
struct pci_dev {int msi_enabled; struct pci_dev_rh1* rh_reserved1; } ;


 int free_msi_irqs (struct pci_dev*) ;
 int kset_unregister (int *) ;
 int pci_msi_enable ;
 int pci_msi_shutdown (struct pci_dev*) ;

void pci_disable_msi(struct pci_dev *dev)
{
 struct pci_dev_rh1 *pdr = dev->rh_reserved1;

 if (!pci_msi_enable || !dev || !dev->msi_enabled)
  return;

 pci_msi_shutdown(dev);
 free_msi_irqs(dev);
 if (pdr && pdr->msi_kset) {
  kset_unregister(pdr->msi_kset);
  pdr->msi_kset = ((void*)0);
 }
}
