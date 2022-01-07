
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int flags; } ;
struct bfi_msgq_mhdr {int dummy; } ;


 int BNA_ETHPORT_F_PORT_ENABLED ;
 int ETHPORT_E_UP ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;
 scalar_t__ ethport_can_be_up (struct bna_ethport*) ;

__attribute__((used)) static void
bna_bfi_ethport_enable_aen(struct bna_ethport *ethport,
    struct bfi_msgq_mhdr *msghdr)
{
 ethport->flags |= BNA_ETHPORT_F_PORT_ENABLED;

 if (ethport_can_be_up(ethport))
  bfa_fsm_send_event(ethport, ETHPORT_E_UP);
}
