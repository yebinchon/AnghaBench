
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_scn_s {struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int dummy; } ;


 struct bfa_fcs_lport_scn_s* BFA_FCS_GET_SCN_FROM_PORT (struct bfa_fcs_lport_s*) ;
 int SCNSM_EVENT_PORT_OFFLINE ;
 int bfa_sm_send_event (struct bfa_fcs_lport_scn_s*,int ) ;

void
bfa_fcs_lport_scn_offline(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_scn_s *scn = BFA_FCS_GET_SCN_FROM_PORT(port);

 scn->port = port;
 bfa_sm_send_event(scn, SCNSM_EVENT_PORT_OFFLINE);
}
