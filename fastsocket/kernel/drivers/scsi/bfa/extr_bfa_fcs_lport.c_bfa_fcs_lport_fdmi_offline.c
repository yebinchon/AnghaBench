
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_lport_fdmi_s {struct bfa_fcs_lport_ms_s* ms; } ;
struct bfa_fcs_lport_ms_s {struct bfa_fcs_lport_fdmi_s fdmi; } ;


 int FDMISM_EVENT_PORT_OFFLINE ;
 int bfa_sm_send_event (struct bfa_fcs_lport_fdmi_s*,int ) ;

void
bfa_fcs_lport_fdmi_offline(struct bfa_fcs_lport_ms_s *ms)
{
 struct bfa_fcs_lport_fdmi_s *fdmi = &ms->fdmi;

 fdmi->ms = ms;
 bfa_sm_send_event(fdmi, FDMISM_EVENT_PORT_OFFLINE);
}
