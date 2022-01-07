
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {scalar_t__ rx_started_count; int flags; } ;


 int BNA_ETHPORT_F_RX_STARTED ;
 int ETHPORT_E_DOWN ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;
 int ethport_is_up (struct bna_ethport*) ;

void
bna_ethport_cb_rx_stopped(struct bna_ethport *ethport)
{
 int ethport_up = ethport_is_up(ethport);

 ethport->rx_started_count--;

 if (ethport->rx_started_count == 0) {
  ethport->flags &= ~BNA_ETHPORT_F_RX_STARTED;

  if (ethport_up)
   bfa_fsm_send_event(ethport, ETHPORT_E_DOWN);
 }
}
