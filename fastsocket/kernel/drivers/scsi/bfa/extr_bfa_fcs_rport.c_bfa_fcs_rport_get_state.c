
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int sm; } ;


 int bfa_sm_to_state (int ,int ) ;
 int rport_sm_table ;

int
bfa_fcs_rport_get_state(struct bfa_fcs_rport_s *rport)
{
 return bfa_sm_to_state(rport_sm_table, rport->sm);
}
