
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch_mgr {int ep_pool; } ;
struct fc_exch {int esb_stat; int arg; int seq; int (* destructor ) (int *,int ) ;struct fc_exch_mgr* em; int ex_refcnt; } ;


 int ESB_ST_COMPLETE ;
 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int mempool_free (struct fc_exch*,int ) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void fc_exch_release(struct fc_exch *ep)
{
 struct fc_exch_mgr *mp;

 if (atomic_dec_and_test(&ep->ex_refcnt)) {
  mp = ep->em;
  if (ep->destructor)
   ep->destructor(&ep->seq, ep->arg);
  WARN_ON(!(ep->esb_stat & ESB_ST_COMPLETE));
  mempool_free(ep, mp->ep_pool);
 }
}
