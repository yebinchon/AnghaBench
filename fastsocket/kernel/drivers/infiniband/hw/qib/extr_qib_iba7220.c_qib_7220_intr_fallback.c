
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qib_devdata {TYPE_2__* pcidev; TYPE_1__* cspec; int msi_lo; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int irq; } ;


 int qib_7220_free_irq (struct qib_devdata*) ;
 int qib_devinfo (TYPE_2__*,char*) ;
 int qib_enable_intx (TYPE_2__*) ;
 int qib_setup_7220_interrupt (struct qib_devdata*) ;

__attribute__((used)) static int qib_7220_intr_fallback(struct qib_devdata *dd)
{
 if (!dd->msi_lo)
  return 0;

 qib_devinfo(dd->pcidev,
  "MSI interrupt not detected, trying INTx interrupts\n");
 qib_7220_free_irq(dd);
 qib_enable_intx(dd->pcidev);






 dd->cspec->irq = dd->pcidev->irq;
 qib_setup_7220_interrupt(dd);
 return 1;
}
