
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {int pcidev; TYPE_1__* cspec; } ;
struct TYPE_2__ {int num_msix_entries; } ;


 int qib_7322_nomsix (struct qib_devdata*) ;
 int qib_devinfo (int ,char*) ;
 int qib_enable_intx (int ) ;
 int qib_setup_7322_interrupt (struct qib_devdata*,int ) ;

__attribute__((used)) static int qib_7322_intr_fallback(struct qib_devdata *dd)
{
 if (!dd->cspec->num_msix_entries)
  return 0;

 qib_devinfo(dd->pcidev,
  "MSIx interrupt not detected, trying INTx interrupts\n");
 qib_7322_nomsix(dd);
 qib_enable_intx(dd->pcidev);
 qib_setup_7322_interrupt(dd, 0);
 return 1;
}
