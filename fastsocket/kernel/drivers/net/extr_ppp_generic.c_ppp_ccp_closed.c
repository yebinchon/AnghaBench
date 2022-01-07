
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp {int flags; int * rc_state; struct compressor* rcomp; int rstate; int * xc_state; struct compressor* xcomp; int xstate; } ;
struct compressor {int owner; int (* decomp_free ) (void*) ;int (* comp_free ) (void*) ;} ;


 int SC_CCP_OPEN ;
 int SC_CCP_UP ;
 int module_put (int ) ;
 int ppp_lock (struct ppp*) ;
 int ppp_unlock (struct ppp*) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

__attribute__((used)) static void
ppp_ccp_closed(struct ppp *ppp)
{
 void *xstate, *rstate;
 struct compressor *xcomp, *rcomp;

 ppp_lock(ppp);
 ppp->flags &= ~(SC_CCP_OPEN | SC_CCP_UP);
 ppp->xstate = 0;
 xcomp = ppp->xcomp;
 xstate = ppp->xc_state;
 ppp->xc_state = ((void*)0);
 ppp->rstate = 0;
 rcomp = ppp->rcomp;
 rstate = ppp->rc_state;
 ppp->rc_state = ((void*)0);
 ppp_unlock(ppp);

 if (xstate) {
  xcomp->comp_free(xstate);
  module_put(xcomp->owner);
 }
 if (rstate) {
  rcomp->decomp_free(rstate);
  module_put(rcomp->owner);
 }
}
