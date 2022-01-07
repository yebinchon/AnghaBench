
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {scalar_t__ db; int pdev; scalar_t__ csr; } ;


 int pci_iounmap (int ,scalar_t__) ;

__attribute__((used)) static void be_unmap_pci_bars(struct be_adapter *adapter)
{
 if (adapter->csr)
  pci_iounmap(adapter->pdev, adapter->csr);
 if (adapter->db)
  pci_iounmap(adapter->pdev, adapter->db);
}
