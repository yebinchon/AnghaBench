
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {scalar_t__ use_msix; int dev; scalar_t__ use_msi; scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct pvscsi_adapter*) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void pvscsi_shutdown_intr(struct pvscsi_adapter *adapter)
{
 if (adapter->irq) {
  free_irq(adapter->irq, adapter);
  adapter->irq = 0;
 }
 if (adapter->use_msi) {
  pci_disable_msi(adapter->dev);
  adapter->use_msi = 0;
 } else if (adapter->use_msix) {
  pci_disable_msix(adapter->dev);
  adapter->use_msix = 0;
 }
}
