
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {size_t port; } ;
struct qib_devdata {unsigned int num_pports; unsigned long* pio_writing; unsigned long* pioavailkernel; int pioavail_lock; int pport; int (* f_sendctrl ) (int ,int ) ;int pio_need_disarm; } ;


 int QIB_MAX_IB_PORTS ;
 int QIB_SENDCTRL_DISARM_BUF (unsigned int) ;
 int __set_bit (unsigned int,int ) ;
 scalar_t__ find_ctxt (struct qib_devdata*,unsigned int) ;
 struct qib_pportdata* is_sdma_buf (struct qib_devdata*,unsigned int) ;
 int qib_cancel_sends (struct qib_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 scalar_t__ test_bit (unsigned int,unsigned long*) ;

void qib_disarm_piobufs_set(struct qib_devdata *dd, unsigned long *mask,
       unsigned cnt)
{
 struct qib_pportdata *ppd, *pppd[QIB_MAX_IB_PORTS];
 unsigned i;
 unsigned long flags;

 for (i = 0; i < dd->num_pports; i++)
  pppd[i] = ((void*)0);

 for (i = 0; i < cnt; i++) {
  int which;
  if (!test_bit(i, mask))
   continue;




  ppd = is_sdma_buf(dd, i);
  if (ppd) {
   pppd[ppd->port] = ppd;
   continue;
  }




  spin_lock_irqsave(&dd->pioavail_lock, flags);
  if (test_bit(i, dd->pio_writing) ||
      (!test_bit(i << 1, dd->pioavailkernel) &&
       find_ctxt(dd, i))) {
   __set_bit(i, dd->pio_need_disarm);
   which = 0;
  } else {
   which = 1;
   dd->f_sendctrl(dd->pport, QIB_SENDCTRL_DISARM_BUF(i));
  }
  spin_unlock_irqrestore(&dd->pioavail_lock, flags);
 }


 for (i = 0; i < dd->num_pports; i++)
  if (pppd[i])
   qib_cancel_sends(pppd[i]);
}
