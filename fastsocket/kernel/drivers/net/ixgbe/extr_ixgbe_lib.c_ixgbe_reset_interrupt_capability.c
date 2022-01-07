
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int flags; int pdev; int * msix_entries; } ;


 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_FLAG_MSI_ENABLED ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void ixgbe_reset_interrupt_capability(struct ixgbe_adapter *adapter)
{
 if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED) {
  adapter->flags &= ~IXGBE_FLAG_MSIX_ENABLED;
  pci_disable_msix(adapter->pdev);
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
 } else if (adapter->flags & IXGBE_FLAG_MSI_ENABLED) {
  adapter->flags &= ~IXGBE_FLAG_MSI_ENABLED;
  pci_disable_msi(adapter->pdev);
 }
}
