
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pcidev; } ;


 int pci_disable_msix (int ) ;

void qib_nomsix(struct qib_devdata *dd)
{
 pci_disable_msix(dd->pcidev);
}
