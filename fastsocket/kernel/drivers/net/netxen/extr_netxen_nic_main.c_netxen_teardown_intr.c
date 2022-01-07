
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int flags; int pdev; } ;


 int NETXEN_NIC_MSIX_ENABLED ;
 int NETXEN_NIC_MSI_ENABLED ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void
netxen_teardown_intr(struct netxen_adapter *adapter)
{
 if (adapter->flags & NETXEN_NIC_MSIX_ENABLED)
  pci_disable_msix(adapter->pdev);
 if (adapter->flags & NETXEN_NIC_MSI_ENABLED)
  pci_disable_msi(adapter->pdev);
}
