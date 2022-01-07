
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int plogi_retries; int timer; int ns_retries; TYPE_2__* port; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_4__ {TYPE_1__* fcs; } ;
struct TYPE_3__ {int bfa; } ;


 int BFA_PORT_TOPOLOGY_LOOP ;
 int WARN_ON (int) ;
 int bfa_fcport_get_topology (int ) ;
 int bfa_fcs_rport_fcs_online_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogi (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_fc4_fcs_online ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_plogi_sending ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_offline(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcs_rport_free(rport);
  break;

 case 137:
 case 139:
  bfa_timer_stop(&rport->timer);
  WARN_ON(!(bfa_fcport_get_topology(rport->port->fcs->bfa) !=
     BFA_PORT_TOPOLOGY_LOOP));
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_nsdisc_sending);
  rport->ns_retries = 0;
  bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  break;

 case 138:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_timer_stop(&rport->timer);
  bfa_fcs_rport_free(rport);
  break;

 case 133:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_timer_stop(&rport->timer);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 135:
 case 131:
 case 136:
 case 130:
  break;

 case 134:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_fcs_online);
  bfa_timer_stop(&rport->timer);
  bfa_fcs_rport_fcs_online_action(rport);
  break;

 case 129:
  bfa_timer_stop(&rport->timer);
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_sending);
  bfa_fcs_rport_send_plogi(rport, ((void*)0));
  break;

 case 132:
  bfa_timer_stop(&rport->timer);
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_sending);
  rport->plogi_retries = 0;
  bfa_fcs_rport_send_plogi(rport, ((void*)0));
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
