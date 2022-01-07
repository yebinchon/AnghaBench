
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fchs_s {int s_id; } ;
struct fc_logi_s {int dummy; } ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int dummy; } ;


 int RPSM_EVENT_PLOGI_COMP ;
 int WWN_NULL ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_alloc (struct bfa_fcs_lport_s*,int ,int ) ;
 int bfa_fcs_rport_update (struct bfa_fcs_rport_s*,struct fc_logi_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;

void
bfa_fcs_rport_start(struct bfa_fcs_lport_s *port, struct fchs_s *fchs,
  struct fc_logi_s *plogi)
{
 struct bfa_fcs_rport_s *rport;

 rport = bfa_fcs_rport_alloc(port, WWN_NULL, fchs->s_id);
 if (!rport)
  return;

 bfa_fcs_rport_update(rport, plogi);

 bfa_sm_send_event(rport, RPSM_EVENT_PLOGI_COMP);
}
