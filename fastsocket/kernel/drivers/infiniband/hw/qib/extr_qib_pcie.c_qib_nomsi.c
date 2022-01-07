
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pcidev; scalar_t__ msi_lo; } ;


 int pci_disable_msi (int ) ;

void qib_nomsi(struct qib_devdata *dd)
{
 dd->msi_lo = 0;
 pci_disable_msi(dd->pcidev);
}
