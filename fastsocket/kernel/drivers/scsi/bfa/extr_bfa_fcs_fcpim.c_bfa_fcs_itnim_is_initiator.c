
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int initiator; } ;
struct bfa_fcs_itnim_s {TYPE_2__ stats; TYPE_1__* rport; int fcs; } ;
struct TYPE_3__ {int pid; } ;


 int BFA_FCS_ITNIM_SM_INITIATOR ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_itnim_is_initiator(struct bfa_fcs_itnim_s *itnim)
{
 bfa_trc(itnim->fcs, itnim->rport->pid);
 itnim->stats.initiator++;
 bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_INITIATOR);
}
