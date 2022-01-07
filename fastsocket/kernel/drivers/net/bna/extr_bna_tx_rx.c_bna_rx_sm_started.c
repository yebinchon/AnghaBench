
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx {TYPE_1__* bna; int (* rx_cleanup_cbfn ) (int ,struct bna_rx*) ;int rxf; } ;
typedef enum bna_rx_event { ____Placeholder_bna_rx_event } bna_rx_event ;
struct TYPE_2__ {int bnad; int ethport; } ;




 int bfa_fsm_set_state (struct bna_rx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_ethport_cb_rx_stopped (int *) ;
 int bna_rx_sm_failed ;
 int bna_rx_sm_rxf_stop_wait ;
 int bna_rxf_fail (int *) ;
 int bna_rxf_stop (int *) ;
 int call_rx_stall_cbfn (struct bna_rx*) ;
 int stub1 (int ,struct bna_rx*) ;

__attribute__((used)) static void
bna_rx_sm_started(struct bna_rx *rx, enum bna_rx_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(rx, bna_rx_sm_rxf_stop_wait);
  bna_ethport_cb_rx_stopped(&rx->bna->ethport);
  bna_rxf_stop(&rx->rxf);
  break;

 case 129:
  bfa_fsm_set_state(rx, bna_rx_sm_failed);
  bna_ethport_cb_rx_stopped(&rx->bna->ethport);
  bna_rxf_fail(&rx->rxf);
  call_rx_stall_cbfn(rx);
  rx->rx_cleanup_cbfn(rx->bna->bnad, rx);
  break;

 default:
  bfa_sm_fault(event);
  break;
 }
}
