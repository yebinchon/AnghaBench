
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct qib_devdata {int first_user_ctxt; int cfgctxts; int uctxt_lock; int (* f_rcvctrl ) (int ,int ,int ) ;struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {int wait; int urgent; int flag; int ctxt; int ppd; int cnt; } ;


 int QIB_CTXT_WAITING_RCV ;
 int QIB_CTXT_WAITING_URG ;
 int QIB_RCVCTRL_INTRAVAIL_DIS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

void qib_handle_urcv(struct qib_devdata *dd, u64 ctxtr)
{
 struct qib_ctxtdata *rcd;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&dd->uctxt_lock, flags);
 for (i = dd->first_user_ctxt; dd->rcd && i < dd->cfgctxts; i++) {
  if (!(ctxtr & (1ULL << i)))
   continue;
  rcd = dd->rcd[i];
  if (!rcd || !rcd->cnt)
   continue;

  if (test_and_clear_bit(QIB_CTXT_WAITING_RCV, &rcd->flag)) {
   wake_up_interruptible(&rcd->wait);
   dd->f_rcvctrl(rcd->ppd, QIB_RCVCTRL_INTRAVAIL_DIS,
          rcd->ctxt);
  } else if (test_and_clear_bit(QIB_CTXT_WAITING_URG,
           &rcd->flag)) {
   rcd->urgent++;
   wake_up_interruptible(&rcd->wait);
  }
 }
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);
}
