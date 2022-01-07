
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_rport_s {int rport_tag; } ;
struct bfa_itnim_s {void* ditn; struct bfa_rport_s* rport; } ;
struct bfa_fcpim_s {int dummy; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;
 struct bfa_itnim_s* BFA_ITNIM_FROM_TAG (struct bfa_fcpim_s*,int ) ;
 int BFA_ITNIM_SM_CREATE ;
 int WARN_ON (int) ;
 int bfa_itn_create (struct bfa_s*,struct bfa_rport_s*,int ) ;
 int bfa_itnim_isr ;
 int bfa_sm_send_event (struct bfa_itnim_s*,int ) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int creates ;

struct bfa_itnim_s *
bfa_itnim_create(struct bfa_s *bfa, struct bfa_rport_s *rport, void *ditn)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);
 struct bfa_itnim_s *itnim;

 bfa_itn_create(bfa, rport, bfa_itnim_isr);

 itnim = BFA_ITNIM_FROM_TAG(fcpim, rport->rport_tag);
 WARN_ON(itnim->rport != rport);

 itnim->ditn = ditn;

 bfa_stats(itnim, creates);
 bfa_sm_send_event(itnim, BFA_ITNIM_SM_CREATE);

 return itnim;
}
