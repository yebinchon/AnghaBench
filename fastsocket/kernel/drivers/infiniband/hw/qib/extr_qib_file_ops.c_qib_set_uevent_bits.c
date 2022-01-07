
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {TYPE_1__* dd; } ;
struct qib_ctxtdata {int subctxt_cnt; int * user_event_mask; } ;
struct TYPE_2__ {unsigned int first_user_ctxt; unsigned int cfgctxts; int uctxt_lock; struct qib_ctxtdata** rcd; } ;


 int set_bit (int const,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qib_set_uevent_bits(struct qib_pportdata *ppd, const int evtbit)
{
 struct qib_ctxtdata *rcd;
 unsigned ctxt;
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&ppd->dd->uctxt_lock, flags);
 for (ctxt = ppd->dd->first_user_ctxt; ctxt < ppd->dd->cfgctxts;
      ctxt++) {
  rcd = ppd->dd->rcd[ctxt];
  if (!rcd)
   continue;
  if (rcd->user_event_mask) {
   int i;




   set_bit(evtbit, &rcd->user_event_mask[0]);
   for (i = 1; i < rcd->subctxt_cnt; i++)
    set_bit(evtbit, &rcd->user_event_mask[i]);
  }
  ret = 1;
  break;
 }
 spin_unlock_irqrestore(&ppd->dd->uctxt_lock, flags);

 return ret;
}
