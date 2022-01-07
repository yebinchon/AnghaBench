
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_lport_ms_s {int dummy; } ;


 struct bfa_fcs_lport_ms_s* BFA_FCS_GET_MS_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int MSSM_EVENT_PORT_FABRIC_RSCN ;
 int bfa_fcs_lport_ms_sm_online ;
 scalar_t__ bfa_sm_cmp_state (struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ms_s*,int ) ;

void
bfa_fcs_lport_ms_fabric_rscn(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_ms_s *ms = BFA_FCS_GET_MS_FROM_PORT(port);


 if (bfa_sm_cmp_state(ms, bfa_fcs_lport_ms_sm_online))
  bfa_sm_send_event(ms, MSSM_EVENT_PORT_FABRIC_RSCN);
}
