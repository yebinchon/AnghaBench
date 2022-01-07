
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int pid; int fcs; } ;
struct bfa_fcs_lport_ns_s {int dummy; } ;


 struct bfa_fcs_lport_ns_s* BFA_FCS_GET_NS_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int NSSM_EVENT_NS_QUERY ;
 int bfa_fcs_lport_ns_sm_online ;
 scalar_t__ bfa_sm_cmp_state (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_lport_ns_query(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_ns_s *ns = BFA_FCS_GET_NS_FROM_PORT(port);

 bfa_trc(port->fcs, port->pid);
 if (bfa_sm_cmp_state(ns, bfa_fcs_lport_ns_sm_online))
  bfa_sm_send_event(ns, NSSM_EVENT_NS_QUERY);
}
