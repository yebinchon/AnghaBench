
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_devdata {int flags; scalar_t__ int_counter; } ;
struct qib_ctxtdata {unsigned long long ctxt; struct qib_devdata* dd; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int sps_ints; } ;


 int IRQ_HANDLED ;
 int QIB_BADINTR ;
 unsigned long long QIB_I_RCVAVAIL_LSB ;
 unsigned long long QIB_I_RCVURG_LSB ;
 int QIB_PRESENT ;
 int kr_intclear ;
 int qib_kreceive (struct qib_ctxtdata*,int *,scalar_t__*) ;
 TYPE_1__ qib_stats ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;

__attribute__((used)) static irqreturn_t qib_7322pintr(int irq, void *data)
{
 struct qib_ctxtdata *rcd = data;
 struct qib_devdata *dd = rcd->dd;
 u32 npkts;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT)






  return IRQ_HANDLED;

 qib_stats.sps_ints++;
 if (dd->int_counter != (u32) -1)
  dd->int_counter++;


 qib_write_kreg(dd, kr_intclear, ((1ULL << QIB_I_RCVAVAIL_LSB) |
         (1ULL << QIB_I_RCVURG_LSB)) << rcd->ctxt);

 qib_kreceive(rcd, ((void*)0), &npkts);

 return IRQ_HANDLED;
}
