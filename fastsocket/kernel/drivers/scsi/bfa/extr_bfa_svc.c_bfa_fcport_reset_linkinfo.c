
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int fec_state; int topology; int speed; } ;


 int BFA_FEC_OFFLINE ;
 int BFA_PORT_SPEED_UNKNOWN ;
 int BFA_PORT_TOPOLOGY_NONE ;

__attribute__((used)) static void
bfa_fcport_reset_linkinfo(struct bfa_fcport_s *fcport)
{
 fcport->speed = BFA_PORT_SPEED_UNKNOWN;
 fcport->topology = BFA_PORT_TOPOLOGY_NONE;
 fcport->fec_state = BFA_FEC_OFFLINE;
}
