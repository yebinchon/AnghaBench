
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int dummy; } ;
typedef enum bna_ethport_event { ____Placeholder_bna_ethport_event } bna_ethport_event ;


 int BNA_CB_FAIL ;
 int BNA_CB_INTERRUPT ;
 int BNA_CB_SUCCESS ;






 int bfa_fsm_set_state (struct bna_ethport*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_bfi_ethport_up (struct bna_ethport*) ;
 int bna_ethport_sm_down ;
 int bna_ethport_sm_down_resp_wait ;
 int bna_ethport_sm_last_resp_wait ;
 int bna_ethport_sm_stopped ;
 int bna_ethport_sm_up ;
 int call_ethport_adminup_cbfn (struct bna_ethport*,int ) ;

__attribute__((used)) static void
bna_ethport_sm_up_resp_wait(struct bna_ethport *ethport,
   enum bna_ethport_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(ethport, bna_ethport_sm_last_resp_wait);
  break;

 case 132:
  call_ethport_adminup_cbfn(ethport, BNA_CB_FAIL);
  bfa_fsm_set_state(ethport, bna_ethport_sm_stopped);
  break;

 case 133:
  call_ethport_adminup_cbfn(ethport, BNA_CB_INTERRUPT);
  bfa_fsm_set_state(ethport, bna_ethport_sm_down_resp_wait);
  break;

 case 129:
  call_ethport_adminup_cbfn(ethport, BNA_CB_SUCCESS);
  bfa_fsm_set_state(ethport, bna_ethport_sm_up);
  break;

 case 130:
  call_ethport_adminup_cbfn(ethport, BNA_CB_FAIL);
  bfa_fsm_set_state(ethport, bna_ethport_sm_down);
  break;

 case 131:

  bna_bfi_ethport_up(ethport);
  break;

 default:
  bfa_sm_fault(event);
 }
}
