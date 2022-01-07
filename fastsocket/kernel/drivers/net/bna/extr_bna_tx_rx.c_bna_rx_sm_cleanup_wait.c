
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rx {int dummy; } ;
typedef enum bna_rx_event { ____Placeholder_bna_rx_event } bna_rx_event ;





 int bfa_fsm_set_state (struct bna_rx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rx_sm_stopped ;

void
bna_rx_sm_cleanup_wait(struct bna_rx *rx, enum bna_rx_event event)
{
 switch (event) {
 case 129:
 case 128:

  break;

 case 130:
  bfa_fsm_set_state(rx, bna_rx_sm_stopped);
  break;

 default:
  bfa_sm_fault(event);
  break;
 }
}
