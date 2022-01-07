
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct qib_devdata*) ;
 int qib_nomsi (struct qib_devdata*) ;

__attribute__((used)) static void qib_6120_free_irq(struct qib_devdata *dd)
{
 if (dd->cspec->irq) {
  free_irq(dd->cspec->irq, dd);
  dd->cspec->irq = 0;
 }
 qib_nomsi(dd);
}
