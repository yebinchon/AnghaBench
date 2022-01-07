
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_pportdata {scalar_t__ hw_pidx; struct qib_devdata* dd; } ;
struct qib_devdata {int flags; scalar_t__ int_counter; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int sps_ints; } ;


 int INT_MASK_P (int ,int) ;
 int IRQ_HANDLED ;
 int QIB_BADINTR ;
 int QIB_PRESENT ;
 int SDmaIdle ;
 int kr_intclear ;
 int qib_sdma_intr (struct qib_pportdata*) ;
 TYPE_1__ qib_stats ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;

__attribute__((used)) static irqreturn_t sdma_idle_intr(int irq, void *data)
{
 struct qib_pportdata *ppd = data;
 struct qib_devdata *dd = ppd->dd;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT)






  return IRQ_HANDLED;

 qib_stats.sps_ints++;
 if (dd->int_counter != (u32) -1)
  dd->int_counter++;


 qib_write_kreg(dd, kr_intclear, ppd->hw_pidx ?
         INT_MASK_P(SDmaIdle, 1) : INT_MASK_P(SDmaIdle, 0));
 qib_sdma_intr(ppd);

 return IRQ_HANDLED;
}
