
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int flags; } ;
typedef enum bna_rxf_event { ____Placeholder_bna_rxf_event } bna_rxf_event ;


 int BNA_RXF_F_PAUSED ;




 int bfa_fsm_set_state (struct bna_rxf*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rxf_cfg_reset (struct bna_rxf*) ;
 int bna_rxf_fltr_clear (struct bna_rxf*) ;
 int bna_rxf_sm_cfg_wait ;
 int bna_rxf_sm_fltr_clr_wait ;
 int bna_rxf_sm_paused ;
 int bna_rxf_sm_stopped ;

__attribute__((used)) static void
bna_rxf_sm_started(struct bna_rxf *rxf, enum bna_rxf_event event)
{
 switch (event) {
 case 128:
 case 130:
  bna_rxf_cfg_reset(rxf);
  bfa_fsm_set_state(rxf, bna_rxf_sm_stopped);
  break;

 case 131:
  bfa_fsm_set_state(rxf, bna_rxf_sm_cfg_wait);
  break;

 case 129:
  rxf->flags |= BNA_RXF_F_PAUSED;
  if (!bna_rxf_fltr_clear(rxf))
   bfa_fsm_set_state(rxf, bna_rxf_sm_paused);
  else
   bfa_fsm_set_state(rxf, bna_rxf_sm_fltr_clr_wait);
  break;

 default:
  bfa_sm_fault(event);
 }
}
