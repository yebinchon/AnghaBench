
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
struct qib_devdata {int flags; scalar_t__ int_counter; unsigned int first_user_ctxt; scalar_t__* rcd; TYPE_1__* cspec; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int sps_ints; } ;
struct TYPE_3__ {unsigned long long main_int_mask; } ;


 int Err ;
 unsigned long long INT_MASK_P (int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int QIB_BADINTR ;
 int QIB_INITTED ;
 unsigned long long QIB_I_BITSEXTANT ;
 unsigned long long QIB_I_C_ERROR ;
 unsigned long long QIB_I_GPIO ;
 unsigned long long QIB_I_P_SDMAINT (int) ;
 unsigned long long QIB_I_RCVAVAIL_LSB ;
 unsigned long long QIB_I_RCVAVAIL_MASK ;
 unsigned long long QIB_I_RCVURG_LSB ;
 unsigned long long QIB_I_RCVURG_MASK ;
 unsigned long long QIB_I_SPIOBUFAVAIL ;
 int QIB_PRESENT ;
 int kr_intclear ;
 int kr_intstatus ;
 int qib_bad_intrstatus (struct qib_devdata*) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_handle_urcv (struct qib_devdata*,unsigned long long) ;
 int qib_ib_piobufavail (struct qib_devdata*) ;
 int qib_kreceive (scalar_t__,int *,scalar_t__*) ;
 unsigned long long qib_read_kreg64 (struct qib_devdata*,int ) ;
 TYPE_2__ qib_stats ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;
 int sdma_7322_intr (struct qib_devdata*,unsigned long long) ;
 scalar_t__ unlikely (unsigned long long) ;
 int unlikely_7322_intr (struct qib_devdata*,unsigned long long) ;

__attribute__((used)) static irqreturn_t qib_7322intr(int irq, void *data)
{
 struct qib_devdata *dd = data;
 irqreturn_t ret;
 u64 istat;
 u64 ctxtrbits;
 u64 rmask;
 unsigned i;
 u32 npkts;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT) {






  ret = IRQ_HANDLED;
  goto bail;
 }

 istat = qib_read_kreg64(dd, kr_intstatus);

 if (unlikely(istat == ~0ULL)) {
  qib_bad_intrstatus(dd);
  qib_dev_err(dd, "Interrupt status all f's, skipping\n");

  ret = IRQ_NONE;
  goto bail;
 }

 istat &= dd->cspec->main_int_mask;
 if (unlikely(!istat)) {

  ret = IRQ_NONE;
  goto bail;
 }

 qib_stats.sps_ints++;
 if (dd->int_counter != (u32) -1)
  dd->int_counter++;


 if (unlikely(istat & (~QIB_I_BITSEXTANT | QIB_I_GPIO |
         QIB_I_C_ERROR | INT_MASK_P(Err, 0) |
         INT_MASK_P(Err, 1))))
  unlikely_7322_intr(dd, istat);







 qib_write_kreg(dd, kr_intclear, istat);






 ctxtrbits = istat & (QIB_I_RCVAVAIL_MASK | QIB_I_RCVURG_MASK);
 if (ctxtrbits) {
  rmask = (1ULL << QIB_I_RCVAVAIL_LSB) |
   (1ULL << QIB_I_RCVURG_LSB);
  for (i = 0; i < dd->first_user_ctxt; i++) {
   if (ctxtrbits & rmask) {
    ctxtrbits &= ~rmask;
    if (dd->rcd[i])
     qib_kreceive(dd->rcd[i], ((void*)0), &npkts);
   }
   rmask <<= 1;
  }
  if (ctxtrbits) {
   ctxtrbits = (ctxtrbits >> QIB_I_RCVAVAIL_LSB) |
    (ctxtrbits >> QIB_I_RCVURG_LSB);
   qib_handle_urcv(dd, ctxtrbits);
  }
 }

 if (istat & (QIB_I_P_SDMAINT(0) | QIB_I_P_SDMAINT(1)))
  sdma_7322_intr(dd, istat);

 if ((istat & QIB_I_SPIOBUFAVAIL) && (dd->flags & QIB_INITTED))
  qib_ib_piobufavail(dd);

 ret = IRQ_HANDLED;
bail:
 return ret;
}
