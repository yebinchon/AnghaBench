
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int flags; int pdev; int * msix_entries; } ;


 int FLAG_MSI_ENABLED ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

void e1000e_reset_interrupt_capability(struct e1000_adapter *adapter)
{
 if (adapter->msix_entries) {
  pci_disable_msix(adapter->pdev);
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
 } else if (adapter->flags & FLAG_MSI_ENABLED) {
  pci_disable_msi(adapter->pdev);
  adapter->flags &= ~FLAG_MSI_ENABLED;
 }
}
