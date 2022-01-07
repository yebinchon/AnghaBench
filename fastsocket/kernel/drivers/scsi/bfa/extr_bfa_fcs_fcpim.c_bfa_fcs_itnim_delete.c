
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_itnim_s {TYPE_1__* rport; int fcs; } ;
struct TYPE_2__ {int pid; } ;


 int BFA_FCS_ITNIM_SM_DELETE ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_itnim_delete(struct bfa_fcs_itnim_s *itnim)
{
 bfa_trc(itnim->fcs, itnim->rport->pid);
 bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_DELETE);
}
