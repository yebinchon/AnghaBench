
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int esb_stat; int ex_lock; struct fc_seq seq; void* arg; int ex_refcnt; int timeout_work; int state; } ;


 struct fc_frame* ERR_PTR (int ) ;
 int ESB_ST_REC_QUAL ;
 int FC_EX_CLOSED ;
 int FC_EX_RST_CLEANUP ;
 int atomic_dec (int *) ;
 scalar_t__ cancel_delayed_work (int *) ;
 int fc_exch_abort_locked (struct fc_exch*,int ) ;
 int fc_exch_delete (struct fc_exch*) ;
 int fc_exch_done_locked (struct fc_exch*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_reset(struct fc_exch *ep)
{
 struct fc_seq *sp;
 void (*resp)(struct fc_seq *, struct fc_frame *, void *);
 void *arg;
 int rc = 1;

 spin_lock_bh(&ep->ex_lock);
 fc_exch_abort_locked(ep, 0);
 ep->state |= FC_EX_RST_CLEANUP;
 if (cancel_delayed_work(&ep->timeout_work))
  atomic_dec(&ep->ex_refcnt);
 resp = ep->resp;
 ep->resp = ((void*)0);
 if (ep->esb_stat & ESB_ST_REC_QUAL)
  atomic_dec(&ep->ex_refcnt);
 ep->esb_stat &= ~ESB_ST_REC_QUAL;
 arg = ep->arg;
 sp = &ep->seq;
 rc = fc_exch_done_locked(ep);
 spin_unlock_bh(&ep->ex_lock);
 if (!rc)
  fc_exch_delete(ep);

 if (resp)
  resp(sp, ERR_PTR(-FC_EX_CLOSED), arg);
}
