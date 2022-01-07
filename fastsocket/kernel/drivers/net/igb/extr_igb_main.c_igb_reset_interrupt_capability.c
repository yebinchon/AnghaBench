
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int flags; int pdev; int * msix_entries; } ;


 int IGB_FLAG_HAS_MSI ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void igb_reset_interrupt_capability(struct igb_adapter *adapter)
{
 if (adapter->msix_entries) {
  pci_disable_msix(adapter->pdev);
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
 } else if (adapter->flags & IGB_FLAG_HAS_MSI) {
  pci_disable_msi(adapter->pdev);
 }
}
