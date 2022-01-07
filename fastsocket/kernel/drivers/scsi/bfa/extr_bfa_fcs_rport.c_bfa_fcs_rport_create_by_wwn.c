
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int fcs; } ;


 int RPSM_EVENT_ADDRESS_DISC ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_alloc (struct bfa_fcs_lport_s*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

struct bfa_fcs_rport_s *
bfa_fcs_rport_create_by_wwn(struct bfa_fcs_lport_s *port, wwn_t rpwwn)
{
 struct bfa_fcs_rport_s *rport;
 bfa_trc(port->fcs, rpwwn);
 rport = bfa_fcs_rport_alloc(port, rpwwn, 0);
 if (!rport)
  return ((void*)0);

 bfa_sm_send_event(rport, RPSM_EVENT_ADDRESS_DISC);
 return rport;
}
