
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fe_priv {int msi_flags; TYPE_2__* pci_dev; TYPE_1__* msi_x_entry; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int vector; } ;


 int NV_MSI_ENABLED ;
 int NV_MSI_X_ENABLED ;
 int NV_MSI_X_VECTORS_MASK ;
 int free_irq (int ,struct net_device*) ;
 struct fe_priv* get_nvpriv (struct net_device*) ;
 int pci_disable_msi (TYPE_2__*) ;
 int pci_disable_msix (TYPE_2__*) ;

__attribute__((used)) static void nv_free_irq(struct net_device *dev)
{
 struct fe_priv *np = get_nvpriv(dev);
 int i;

 if (np->msi_flags & NV_MSI_X_ENABLED) {
  for (i = 0; i < (np->msi_flags & NV_MSI_X_VECTORS_MASK); i++) {
   free_irq(np->msi_x_entry[i].vector, dev);
  }
  pci_disable_msix(np->pci_dev);
  np->msi_flags &= ~NV_MSI_X_ENABLED;
 } else {
  free_irq(np->pci_dev->irq, dev);
  if (np->msi_flags & NV_MSI_ENABLED) {
   pci_disable_msi(np->pci_dev);
   np->msi_flags &= ~NV_MSI_ENABLED;
  }
 }
}
