
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct vmxnet3_adapter {TYPE_1__ intr; int pdev; } ;


 int BUG_ON (int) ;
 scalar_t__ VMXNET3_IT_INTX ;
 scalar_t__ VMXNET3_IT_MSI ;
 scalar_t__ VMXNET3_IT_MSIX ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;

__attribute__((used)) static void
vmxnet3_free_intr_resources(struct vmxnet3_adapter *adapter)
{
 if (adapter->intr.type == VMXNET3_IT_MSIX)
  pci_disable_msix(adapter->pdev);
 else if (adapter->intr.type == VMXNET3_IT_MSI)
  pci_disable_msi(adapter->pdev);
 else
  BUG_ON(adapter->intr.type != VMXNET3_IT_INTX);
}
