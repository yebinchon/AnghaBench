
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {scalar_t__ num_msix_roce_vec; scalar_t__ num_msix_vec; int pdev; } ;


 scalar_t__ msix_enabled (struct be_adapter*) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void be_msix_disable(struct be_adapter *adapter)
{
 if (msix_enabled(adapter)) {
  pci_disable_msix(adapter->pdev);
  adapter->num_msix_vec = 0;
  adapter->num_msix_roce_vec = 0;
 }
}
