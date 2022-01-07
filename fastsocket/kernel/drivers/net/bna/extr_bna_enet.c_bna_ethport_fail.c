
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ethport {scalar_t__ link_status; TYPE_1__* bna; int (* link_cbfn ) (int ,scalar_t__) ;int flags; } ;
struct TYPE_2__ {int bnad; } ;


 int BNA_ETHPORT_F_PORT_ENABLED ;
 scalar_t__ BNA_LINK_DOWN ;
 int ETHPORT_E_FAIL ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void
bna_ethport_fail(struct bna_ethport *ethport)
{

 ethport->flags |= BNA_ETHPORT_F_PORT_ENABLED;

 if (ethport->link_status != BNA_LINK_DOWN) {
  ethport->link_status = BNA_LINK_DOWN;
  ethport->link_cbfn(ethport->bna->bnad, BNA_LINK_DOWN);
 }
 bfa_fsm_send_event(ethport, ETHPORT_E_FAIL);
}
