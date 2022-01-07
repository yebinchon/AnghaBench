
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int flags; } ;
typedef enum bna_enet_event { ____Placeholder_bna_enet_event } bna_enet_event ;


 int BNA_ENET_F_PAUSE_CHANGED ;





 int bfa_fsm_set_state (struct bna_enet*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_bfi_pause_set (struct bna_enet*) ;
 int bna_enet_chld_start (struct bna_enet*) ;
 int bna_enet_sm_last_resp_wait ;
 int bna_enet_sm_started ;
 int bna_enet_sm_stopped ;

__attribute__((used)) static void
bna_enet_sm_pause_init_wait(struct bna_enet *enet,
    enum bna_enet_event event)
{
 switch (event) {
 case 128:
  enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
  bfa_fsm_set_state(enet, bna_enet_sm_last_resp_wait);
  break;

 case 132:
  enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
  bfa_fsm_set_state(enet, bna_enet_sm_stopped);
  break;

 case 129:
  enet->flags |= BNA_ENET_F_PAUSE_CHANGED;
  break;

 case 130:

  break;

 case 131:
  if (enet->flags & BNA_ENET_F_PAUSE_CHANGED) {
   enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
   bna_bfi_pause_set(enet);
  } else {
   bfa_fsm_set_state(enet, bna_enet_sm_started);
   bna_enet_chld_start(enet);
  }
  break;

 default:
  bfa_sm_fault(event);
 }
}
