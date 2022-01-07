
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_itnim_s {int fcs; TYPE_1__* rport; } ;
typedef enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_2__ {int pwwn; } ;




 int RPSM_EVENT_FC4_OFFLINE ;
 int bfa_fcs_itnim_free (struct bfa_fcs_itnim_s*) ;
 int bfa_fcs_itnim_sm_offline ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_send_event (TYPE_1__*,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_itnim_sm_hcb_offline(struct bfa_fcs_itnim_s *itnim,
        enum bfa_fcs_itnim_event event)
{
 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_trc(itnim->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
  break;

 case 129:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_fcs_itnim_free(itnim);
  break;

 default:
  bfa_sm_fault(itnim->fcs, event);
 }
}
