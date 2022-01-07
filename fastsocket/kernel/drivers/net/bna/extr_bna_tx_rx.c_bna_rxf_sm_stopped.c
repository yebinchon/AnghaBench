
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
 int bna_rxf_sm_paused ;
 int call_rxf_cam_fltr_cbfn (struct bna_rxf*) ;
 int call_rxf_pause_cbfn (struct bna_rxf*) ;
 int call_rxf_resume_cbfn (struct bna_rxf*) ;
 int call_rxf_start_cbfn (struct bna_rxf*) ;
 int call_rxf_stop_cbfn (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_sm_stopped(struct bna_rxf *rxf, enum bna_rxf_event event)
{
 switch (event) {
 case 129:
  if (rxf->flags & BNA_RXF_F_PAUSED) {
   bfa_fsm_set_state(rxf, bna_rxf_sm_paused);
   call_rxf_start_cbfn(rxf);
  } else
   bfa_fsm_set_state(rxf, bna_rxf_sm_cfg_wait);
  break;

 case 128:
  call_rxf_stop_cbfn(rxf);
  break;

 case 132:

  break;

 case 133:
  call_rxf_cam_fltr_cbfn(rxf);
  break;

 case 131:
  rxf->flags |= BNA_RXF_F_PAUSED;
  call_rxf_pause_cbfn(rxf);
  break;

 case 130:
  rxf->flags &= ~BNA_RXF_F_PAUSED;
  call_rxf_resume_cbfn(rxf);
  break;

 default:
  bfa_sm_fault(event);
 }
}
