
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int flags; } ;
typedef enum bna_rxf_event { ____Placeholder_bna_rxf_event } bna_rxf_event ;


 int BNA_RXF_F_PAUSED ;




 int bfa_fsm_set_state (struct bna_rxf*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rxf_sm_cfg_wait ;
 int bna_rxf_sm_stopped ;
 int call_rxf_cam_fltr_cbfn (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_sm_paused(struct bna_rxf *rxf, enum bna_rxf_event event)
{
 switch (event) {
 case 128:
 case 130:
  bfa_fsm_set_state(rxf, bna_rxf_sm_stopped);
  break;

 case 131:
  call_rxf_cam_fltr_cbfn(rxf);
  break;

 case 129:
  rxf->flags &= ~BNA_RXF_F_PAUSED;
  bfa_fsm_set_state(rxf, bna_rxf_sm_cfg_wait);
  break;

 default:
  bfa_sm_fault(event);
 }
}
