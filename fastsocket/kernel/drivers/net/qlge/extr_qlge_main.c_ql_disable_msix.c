
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int flags; int pdev; int * msi_x_entry; } ;


 int QL_MSIX_ENABLED ;
 int QL_MSI_ENABLED ;
 int clear_bit (int ,int *) ;
 int kfree (int *) ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ql_disable_msix(struct ql_adapter *qdev)
{
 if (test_bit(QL_MSIX_ENABLED, &qdev->flags)) {
  pci_disable_msix(qdev->pdev);
  clear_bit(QL_MSIX_ENABLED, &qdev->flags);
  kfree(qdev->msi_x_entry);
  qdev->msi_x_entry = ((void*)0);
 } else if (test_bit(QL_MSI_ENABLED, &qdev->flags)) {
  pci_disable_msi(qdev->pdev);
  clear_bit(QL_MSI_ENABLED, &qdev->flags);
 }
}
