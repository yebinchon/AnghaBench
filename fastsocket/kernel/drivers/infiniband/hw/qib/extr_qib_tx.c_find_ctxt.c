
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {unsigned int first_user_ctxt; unsigned int cfgctxts; int uctxt_lock; struct qib_ctxtdata** rcd; } ;
struct qib_ctxtdata {unsigned int pio_base; unsigned int piocnt; int subctxt_cnt; int * user_event_mask; } ;


 int _QIB_EVENT_DISARM_BUFS_BIT ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int find_ctxt(struct qib_devdata *dd, unsigned bufn)
{
 struct qib_ctxtdata *rcd;
 unsigned ctxt;
 int ret = 0;

 spin_lock(&dd->uctxt_lock);
 for (ctxt = dd->first_user_ctxt; ctxt < dd->cfgctxts; ctxt++) {
  rcd = dd->rcd[ctxt];
  if (!rcd || bufn < rcd->pio_base ||
      bufn >= rcd->pio_base + rcd->piocnt)
   continue;
  if (rcd->user_event_mask) {
   int i;




   set_bit(_QIB_EVENT_DISARM_BUFS_BIT,
    &rcd->user_event_mask[0]);
   for (i = 1; i < rcd->subctxt_cnt; i++)
    set_bit(_QIB_EVENT_DISARM_BUFS_BIT,
     &rcd->user_event_mask[i]);
  }
  ret = 1;
  break;
 }
 spin_unlock(&dd->uctxt_lock);

 return ret;
}
