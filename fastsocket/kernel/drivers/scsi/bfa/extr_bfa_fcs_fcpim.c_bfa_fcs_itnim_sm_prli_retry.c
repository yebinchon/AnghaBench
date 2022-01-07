
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_itnim_s {int prli_retries; int fcs; int timer; TYPE_1__* rport; } ;
typedef enum bfa_fcs_itnim_event { ____Placeholder_bfa_fcs_itnim_event } bfa_fcs_itnim_event ;
struct TYPE_2__ {int pwwn; } ;






 int BFA_FCS_RPORT_MAX_RETRIES ;
 int RPSM_EVENT_FC4_FCS_ONLINE ;
 int RPSM_EVENT_FC4_OFFLINE ;
 int RPSM_EVENT_LOGO_IMP ;
 int bfa_fcs_itnim_free (struct bfa_fcs_itnim_s*) ;
 int bfa_fcs_itnim_send_prli (struct bfa_fcs_itnim_s*,int *) ;
 int bfa_fcs_itnim_sm_initiator ;
 int bfa_fcs_itnim_sm_offline ;
 int bfa_fcs_itnim_sm_prli_send ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_send_event (TYPE_1__*,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_itnim_sm_prli_retry(struct bfa_fcs_itnim_s *itnim,
       enum bfa_fcs_itnim_event event)
{
 bfa_trc(itnim->fcs, itnim->rport->pwwn);
 bfa_trc(itnim->fcs, event);

 switch (event) {
 case 128:
  if (itnim->prli_retries < BFA_FCS_RPORT_MAX_RETRIES) {
   itnim->prli_retries++;
   bfa_trc(itnim->fcs, itnim->prli_retries);
   bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_prli_send);
   bfa_fcs_itnim_send_prli(itnim, ((void*)0));
  } else {

   bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
   bfa_sm_send_event(itnim->rport, RPSM_EVENT_LOGO_IMP);
  }
  break;


 case 129:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_timer_stop(&itnim->timer);
  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_OFFLINE);
  break;

 case 130:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_initiator);
  bfa_timer_stop(&itnim->timer);
  bfa_sm_send_event(itnim->rport, RPSM_EVENT_FC4_FCS_ONLINE);
  break;

 case 131:
  bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);
  bfa_timer_stop(&itnim->timer);
  bfa_fcs_itnim_free(itnim);
  break;

 default:
  bfa_sm_fault(itnim->fcs, event);
 }
}
