
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fchs_s {int ox_id; int s_id; } ;
struct fc_logi_s {int port_name; } ;
struct TYPE_2__ {int plogi_rcvd; } ;
struct bfa_fcs_rport_s {TYPE_1__ stats; int reply_oxid; int fcs; } ;
struct bfa_fcs_lport_s {int dummy; } ;


 int RPSM_EVENT_PLOGI_RCVD ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_alloc (struct bfa_fcs_lport_s*,int ,int ) ;
 int bfa_fcs_rport_update (struct bfa_fcs_rport_s*,struct fc_logi_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_rport_plogi_create(struct bfa_fcs_lport_s *port, struct fchs_s *fchs,
    struct fc_logi_s *plogi)
{
 struct bfa_fcs_rport_s *rport;

 rport = bfa_fcs_rport_alloc(port, plogi->port_name, fchs->s_id);
 if (!rport)
  return;

 bfa_fcs_rport_update(rport, plogi);

 rport->reply_oxid = fchs->ox_id;
 bfa_trc(rport->fcs, rport->reply_oxid);

 rport->stats.plogi_rcvd++;
 bfa_sm_send_event(rport, RPSM_EVENT_PLOGI_RCVD);
}
