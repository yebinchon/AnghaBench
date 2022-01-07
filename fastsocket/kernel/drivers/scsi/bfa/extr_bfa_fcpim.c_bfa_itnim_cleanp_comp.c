
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int dummy; } ;


 int BFA_ITNIM_SM_CLEANUP ;
 int bfa_sm_send_event (struct bfa_itnim_s*,int ) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int cleanup_comps ;

__attribute__((used)) static void
bfa_itnim_cleanp_comp(void *itnim_cbarg)
{
 struct bfa_itnim_s *itnim = itnim_cbarg;

 bfa_stats(itnim, cleanup_comps);
 bfa_sm_send_event(itnim, BFA_ITNIM_SM_CLEANUP);
}
