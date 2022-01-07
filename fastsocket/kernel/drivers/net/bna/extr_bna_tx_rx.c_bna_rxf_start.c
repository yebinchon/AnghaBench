
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int rx; int start_cbarg; int start_cbfn; } ;


 int RXF_E_START ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 int bna_rx_cb_rxf_started ;

__attribute__((used)) static void
bna_rxf_start(struct bna_rxf *rxf)
{
 rxf->start_cbfn = bna_rx_cb_rxf_started;
 rxf->start_cbarg = rxf->rx;
 bfa_fsm_send_event(rxf, RXF_E_START);
}
