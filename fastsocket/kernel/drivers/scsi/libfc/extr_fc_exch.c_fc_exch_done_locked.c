
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch {int state; int esb_stat; int ex_refcnt; int timeout_work; int * resp; } ;


 int ESB_ST_COMPLETE ;
 int ESB_ST_REC_QUAL ;
 int FC_EX_DONE ;
 int atomic_dec (int *) ;
 scalar_t__ cancel_delayed_work (int *) ;

__attribute__((used)) static int fc_exch_done_locked(struct fc_exch *ep)
{
 int rc = 1;







 ep->resp = ((void*)0);
 if (ep->state & FC_EX_DONE)
  return rc;
 ep->esb_stat |= ESB_ST_COMPLETE;

 if (!(ep->esb_stat & ESB_ST_REC_QUAL)) {
  ep->state |= FC_EX_DONE;
  if (cancel_delayed_work(&ep->timeout_work))
   atomic_dec(&ep->ex_refcnt);
  rc = 0;
 }
 return rc;
}
