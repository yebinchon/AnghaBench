
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int dummy; } ;


 int ETHPORT_E_START ;
 int bfa_fsm_send_event (struct bna_ethport*,int ) ;

__attribute__((used)) static void
bna_ethport_start(struct bna_ethport *ethport)
{
 bfa_fsm_send_event(ethport, ETHPORT_E_START);
}
