
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int stop_cbfn; } ;


 int ETHPORT_E_STOP ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;
 int bna_enet_cb_ethport_stopped ;

__attribute__((used)) static void
bna_ethport_stop(struct bna_ethport *ethport)
{
 ethport->stop_cbfn = bna_enet_cb_ethport_stopped;
 bfa_fsm_send_event(ethport, ETHPORT_E_STOP);
}
