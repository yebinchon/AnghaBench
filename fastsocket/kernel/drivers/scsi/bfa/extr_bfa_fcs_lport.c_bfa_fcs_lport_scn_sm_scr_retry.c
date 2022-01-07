
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_lport_scn_s {TYPE_1__* port; int timer; } ;
typedef enum port_scn_event { ____Placeholder_port_scn_event } port_scn_event ;
struct TYPE_2__ {int fcs; } ;




 int bfa_fcs_lport_scn_send_scr (struct bfa_fcs_lport_scn_s*,int *) ;
 int bfa_fcs_lport_scn_sm_offline ;
 int bfa_fcs_lport_scn_sm_sending_scr ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_scn_s*,int ) ;
 int bfa_timer_stop (int *) ;

__attribute__((used)) static void
bfa_fcs_lport_scn_sm_scr_retry(struct bfa_fcs_lport_scn_s *scn,
    enum port_scn_event event)
{
 switch (event) {
 case 128:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_sending_scr);
  bfa_fcs_lport_scn_send_scr(scn, ((void*)0));
  break;

 case 129:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_offline);
  bfa_timer_stop(&scn->timer);
  break;

 default:
  bfa_sm_fault(scn->port->fcs, event);
 }
}
