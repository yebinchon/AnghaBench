
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfa_fcs_lport_ms_s {TYPE_3__* port; int fcxp; int retry_cnt; int timer; } ;
typedef enum port_ms_event { ____Placeholder_port_ms_event } port_ms_event ;
struct TYPE_5__ {int ms_retries; } ;
struct TYPE_4__ {int pwwn; } ;
struct TYPE_6__ {int fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;


 int BFA_FCS_GET_HAL_FROM_PORT (TYPE_3__*) ;
 int BFA_FCS_MS_CMD_MAX_RETRIES ;
 int BFA_FCS_RETRY_TIMEOUT ;



 int bfa_fcs_lport_ms_send_gfn (struct bfa_fcs_lport_ms_s*,int *) ;
 int bfa_fcs_lport_ms_sm_gfn_sending ;
 int bfa_fcs_lport_ms_sm_gmal_retry ;
 int bfa_fcs_lport_ms_sm_offline ;
 int bfa_fcs_lport_ms_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ms_sm_gmal(struct bfa_fcs_lport_ms_s *ms,
    enum port_ms_event event)
{
 bfa_trc(ms->port->fcs, ms->port->port_cfg.pwwn);
 bfa_trc(ms->port->fcs, event);

 switch (event) {
 case 129:



  if (ms->retry_cnt++ < BFA_FCS_MS_CMD_MAX_RETRIES) {
   bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_gmal_retry);
   ms->port->stats.ms_retries++;
   bfa_timer_start(BFA_FCS_GET_HAL_FROM_PORT(ms->port),
    &ms->timer, bfa_fcs_lport_ms_timeout, ms,
    BFA_FCS_RETRY_TIMEOUT);
  } else {
   bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_gfn_sending);
   bfa_fcs_lport_ms_send_gfn(ms, ((void*)0));
   ms->retry_cnt = 0;
  }
  break;

 case 128:
  bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_gfn_sending);
  bfa_fcs_lport_ms_send_gfn(ms, ((void*)0));
  break;

 case 130:
  bfa_sm_set_state(ms, bfa_fcs_lport_ms_sm_offline);
  bfa_fcxp_discard(ms->fcxp);
  break;

 default:
  bfa_sm_fault(ms->port->fcs, event);
 }
}
