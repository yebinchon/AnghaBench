
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qib_devdata {int flags; int int_counter; unsigned int first_user_ctxt; TYPE_1__* cspec; int * rcd; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int sps_ints; } ;
struct TYPE_3__ {int lli_counter; int lli_thresh; int lli_errs; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QIB_BADINTR ;
 int QIB_INITTED ;
 int QIB_PRESENT ;
 int QLOGIC_IB_I_BITSEXTANT ;
 int QLOGIC_IB_I_ERROR ;
 int QLOGIC_IB_I_GPIO ;
 int QLOGIC_IB_I_RCVAVAIL_MASK ;
 int QLOGIC_IB_I_RCVAVAIL_SHIFT ;
 int QLOGIC_IB_I_RCVURG_MASK ;
 int QLOGIC_IB_I_RCVURG_SHIFT ;
 int QLOGIC_IB_I_SPIOBUFAVAIL ;
 int kr_intclear ;
 int kr_intstatus ;
 int qib_bad_intrstatus (struct qib_devdata*) ;
 int qib_handle_urcv (struct qib_devdata*,int) ;
 int qib_ib_piobufavail (struct qib_devdata*) ;
 int qib_kreceive (int ,int*,int *) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 TYPE_2__ qib_stats ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int unlikely_6120_intr (struct qib_devdata*,int) ;

__attribute__((used)) static irqreturn_t qib_6120intr(int irq, void *data)
{
 struct qib_devdata *dd = data;
 irqreturn_t ret;
 u32 istat, ctxtrbits, rmask, crcs = 0;
 unsigned i;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT) {






  ret = IRQ_HANDLED;
  goto bail;
 }

 istat = qib_read_kreg32(dd, kr_intstatus);

 if (unlikely(!istat)) {
  ret = IRQ_NONE;
  goto bail;
 }
 if (unlikely(istat == -1)) {
  qib_bad_intrstatus(dd);

  ret = IRQ_NONE;
  goto bail;
 }

 qib_stats.sps_ints++;
 if (dd->int_counter != (u32) -1)
  dd->int_counter++;

 if (unlikely(istat & (~QLOGIC_IB_I_BITSEXTANT |
         QLOGIC_IB_I_GPIO | QLOGIC_IB_I_ERROR)))
  unlikely_6120_intr(dd, istat);







 qib_write_kreg(dd, kr_intclear, istat);






 ctxtrbits = istat &
  ((QLOGIC_IB_I_RCVAVAIL_MASK << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
   (QLOGIC_IB_I_RCVURG_MASK << QLOGIC_IB_I_RCVURG_SHIFT));
 if (ctxtrbits) {
  rmask = (1U << QLOGIC_IB_I_RCVAVAIL_SHIFT) |
   (1U << QLOGIC_IB_I_RCVURG_SHIFT);
  for (i = 0; i < dd->first_user_ctxt; i++) {
   if (ctxtrbits & rmask) {
    ctxtrbits &= ~rmask;
    crcs += qib_kreceive(dd->rcd[i],
           &dd->cspec->lli_counter,
           ((void*)0));
   }
   rmask <<= 1;
  }
  if (crcs) {
   u32 cntr = dd->cspec->lli_counter;
   cntr += crcs;
   if (cntr) {
    if (cntr > dd->cspec->lli_thresh) {
     dd->cspec->lli_counter = 0;
     dd->cspec->lli_errs++;
    } else
     dd->cspec->lli_counter += cntr;
   }
  }


  if (ctxtrbits) {
   ctxtrbits =
    (ctxtrbits >> QLOGIC_IB_I_RCVAVAIL_SHIFT) |
    (ctxtrbits >> QLOGIC_IB_I_RCVURG_SHIFT);
   qib_handle_urcv(dd, ctxtrbits);
  }
 }

 if ((istat & QLOGIC_IB_I_SPIOBUFAVAIL) && (dd->flags & QIB_INITTED))
  qib_ib_piobufavail(dd);

 ret = IRQ_HANDLED;
bail:
 return ret;
}
