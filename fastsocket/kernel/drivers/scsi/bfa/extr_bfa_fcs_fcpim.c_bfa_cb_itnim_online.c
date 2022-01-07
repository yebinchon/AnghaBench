
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_itnim_s {TYPE_1__* rport; int fcs; } ;
struct TYPE_2__ {int pwwn; } ;


 int BFA_FCS_ITNIM_SM_HCB_ONLINE ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_cb_itnim_online(void *cbarg)
{
 struct bfa_fcs_itnim_s *itnim = (struct bfa_fcs_itnim_s *) cbarg;

 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_HCB_ONLINE);
}
