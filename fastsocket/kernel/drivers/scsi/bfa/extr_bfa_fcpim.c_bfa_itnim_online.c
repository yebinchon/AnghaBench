
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_s {int seq_rec; } ;
typedef int bfa_boolean_t ;


 int BFA_ITNIM_SM_ONLINE ;
 int bfa_sm_send_event (struct bfa_itnim_s*,int ) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int onlines ;

void
bfa_itnim_online(struct bfa_itnim_s *itnim, bfa_boolean_t seq_rec)
{
 itnim->seq_rec = seq_rec;
 bfa_stats(itnim, onlines);
 bfa_sm_send_event(itnim, BFA_ITNIM_SM_ONLINE);
}
