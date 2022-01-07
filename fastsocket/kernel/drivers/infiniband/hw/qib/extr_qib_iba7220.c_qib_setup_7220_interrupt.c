
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; scalar_t__ msi_lo; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int QIB_DRV_NAME ;
 int qib_7220intr ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int request_irq (int ,int ,int ,int ,struct qib_devdata*) ;

__attribute__((used)) static void qib_setup_7220_interrupt(struct qib_devdata *dd)
{
 if (!dd->cspec->irq)
  qib_dev_err(dd,
   "irq is 0, BIOS error?  Interrupts won't work\n");
 else {
  int ret = request_irq(dd->cspec->irq, qib_7220intr,
   dd->msi_lo ? 0 : IRQF_SHARED,
   QIB_DRV_NAME, dd);

  if (ret)
   qib_dev_err(dd,
    "Couldn't setup %s interrupt (irq=%d): %d\n",
    dd->msi_lo ? "MSI" : "INTx",
    dd->cspec->irq, ret);
 }
}
