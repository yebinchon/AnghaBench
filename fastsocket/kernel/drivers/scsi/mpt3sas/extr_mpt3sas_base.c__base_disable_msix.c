
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPT3SAS_ADAPTER {scalar_t__ msix_enable; int pdev; } ;


 int pci_disable_msix (int ) ;

__attribute__((used)) static void
_base_disable_msix(struct MPT3SAS_ADAPTER *ioc)
{
 if (!ioc->msix_enable)
  return;
 pci_disable_msix(ioc->pdev);
 ioc->msix_enable = 0;
}
