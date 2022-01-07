
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_rport_s {int stats; void* rport_drv; struct bfa_s* bfa; } ;


 int BFA_RPORT_MOD (struct bfa_s*) ;
 int BFA_RPORT_SM_CREATE ;
 int WARN_ON (int) ;
 struct bfa_rport_s* bfa_rport_alloc (int ) ;
 int bfa_rport_sm_uninit ;
 int bfa_sm_cmp_state (struct bfa_rport_s*,int ) ;
 int bfa_sm_send_event (struct bfa_rport_s*,int ) ;
 int memset (int *,int ,int) ;

struct bfa_rport_s *
bfa_rport_create(struct bfa_s *bfa, void *rport_drv)
{
 struct bfa_rport_s *rp;

 rp = bfa_rport_alloc(BFA_RPORT_MOD(bfa));

 if (rp == ((void*)0))
  return ((void*)0);

 rp->bfa = bfa;
 rp->rport_drv = rport_drv;
 memset(&rp->stats, 0, sizeof(rp->stats));

 WARN_ON(!bfa_sm_cmp_state(rp, bfa_rport_sm_uninit));
 bfa_sm_send_event(rp, BFA_RPORT_SM_CREATE);

 return rp;
}
