
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_s {int bfa; } ;


 int bfa_fcport_event_register (int ,int ,struct bfa_fcs_s*) ;
 int bfa_fcs_port_event_handler ;

void
bfa_fcs_port_attach(struct bfa_fcs_s *fcs)
{
 bfa_fcport_event_register(fcs->bfa, bfa_fcs_port_event_handler, fcs);
}
