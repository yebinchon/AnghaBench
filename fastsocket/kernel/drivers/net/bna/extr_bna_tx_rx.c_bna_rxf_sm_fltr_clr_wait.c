
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;
typedef enum bna_rxf_event { ____Placeholder_bna_rxf_event } bna_rxf_event ;




 int bfa_fsm_set_state (struct bna_rxf*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rxf_cfg_reset (struct bna_rxf*) ;
 int bna_rxf_fltr_clear (struct bna_rxf*) ;
 int bna_rxf_sm_paused ;
 int bna_rxf_sm_stopped ;
 int call_rxf_pause_cbfn (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_sm_fltr_clr_wait(struct bna_rxf *rxf, enum bna_rxf_event event)
{
 switch (event) {
 case 129:
  bna_rxf_cfg_reset(rxf);
  call_rxf_pause_cbfn(rxf);
  bfa_fsm_set_state(rxf, bna_rxf_sm_stopped);
  break;

 case 128:
  if (!bna_rxf_fltr_clear(rxf)) {

   bfa_fsm_set_state(rxf, bna_rxf_sm_paused);
  }
  break;

 default:
  bfa_sm_fault(event);
 }
}
