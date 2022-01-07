
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int dummy; } ;
typedef enum bna_enet_event { ____Placeholder_bna_enet_event } bna_enet_event ;




 int bfa_fsm_set_state (struct bna_enet*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_enet_sm_stopped ;

__attribute__((used)) static void
bna_enet_sm_last_resp_wait(struct bna_enet *enet,
    enum bna_enet_event event)
{
 switch (event) {
 case 129:
 case 128:
  bfa_fsm_set_state(enet, bna_enet_sm_stopped);
  break;

 default:
  bfa_sm_fault(event);
 }
}
