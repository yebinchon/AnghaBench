
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int fcs; } ;


 int RPSM_EVENT_PLOGI_SEND ;
 int WWN_NULL ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_alloc (struct bfa_fcs_lport_s*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

struct bfa_fcs_rport_s *
bfa_fcs_rport_create(struct bfa_fcs_lport_s *port, u32 rpid)
{
 struct bfa_fcs_rport_s *rport;

 bfa_trc(port->fcs, rpid);
 rport = bfa_fcs_rport_alloc(port, WWN_NULL, rpid);
 if (!rport)
  return ((void*)0);

 bfa_sm_send_event(rport, RPSM_EVENT_PLOGI_SEND);
 return rport;
}
