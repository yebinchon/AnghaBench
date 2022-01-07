
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx {TYPE_1__* bna; int (* rx_cleanup_cbfn ) (int ,struct bna_rx*) ;int rxf; } ;
typedef enum bna_rx_event { ____Placeholder_bna_rx_event } bna_rx_event ;
struct TYPE_2__ {int bnad; } ;





 int bfa_fsm_set_state (struct bna_rx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rx_sm_failed ;
 int bna_rx_sm_rxf_stop_wait ;
 int bna_rx_sm_started ;
 int bna_rxf_fail (int *) ;
 int call_rx_stall_cbfn (struct bna_rx*) ;
 int stub1 (int ,struct bna_rx*) ;

__attribute__((used)) static void bna_rx_sm_rxf_start_wait(struct bna_rx *rx,
    enum bna_rx_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(rx, bna_rx_sm_rxf_stop_wait);
  break;

 case 130:
  bfa_fsm_set_state(rx, bna_rx_sm_failed);
  bna_rxf_fail(&rx->rxf);
  call_rx_stall_cbfn(rx);
  rx->rx_cleanup_cbfn(rx->bna->bnad, rx);
  break;

 case 129:
  bfa_fsm_set_state(rx, bna_rx_sm_started);
  break;

 default:
  bfa_sm_fault(event);
  break;
 }
}
