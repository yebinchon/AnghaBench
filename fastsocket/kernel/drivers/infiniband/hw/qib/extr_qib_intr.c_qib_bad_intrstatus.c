
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int (* f_free_irq ) (struct qib_devdata*) ;int flags; int (* f_set_intr_state ) (struct qib_devdata*,int ) ;} ;


 int QIB_BADINTR ;
 int QIB_INITTED ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int stub1 (struct qib_devdata*,int ) ;
 int stub2 (struct qib_devdata*) ;

void qib_bad_intrstatus(struct qib_devdata *dd)
{
 static int allbits;







 qib_dev_err(dd,
  "Read of chip interrupt status failed disabling interrupts\n");
 if (allbits++) {

  if (allbits == 2)
   dd->f_set_intr_state(dd, 0);
  if (allbits == 3) {
   qib_dev_err(dd,
    "2nd bad interrupt status, unregistering interrupts\n");
   dd->flags |= QIB_BADINTR;
   dd->flags &= ~QIB_INITTED;
   dd->f_free_irq(dd);
  }
 }
}
