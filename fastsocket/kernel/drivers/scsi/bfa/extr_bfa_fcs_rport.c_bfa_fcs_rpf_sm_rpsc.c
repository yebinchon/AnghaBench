
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pid; TYPE_1__* fcs; int bfa_rport; } ;
struct bfa_fcs_rpf_s {int rpsc_retries; int fcxp; int timer; int assigned_speed; int rpsc_speed; struct bfa_fcs_rport_s* rport; } ;
typedef enum rpf_event { ____Placeholder_rpf_event } rpf_event ;
struct TYPE_3__ {int bfa; } ;


 int BFA_FCS_RPF_RETRIES ;
 int BFA_FCS_RPF_RETRY_TIMEOUT ;
 int BFA_PORT_SPEED_UNKNOWN ;




 int bfa_fcs_rpf_sm_offline ;
 int bfa_fcs_rpf_sm_online ;
 int bfa_fcs_rpf_sm_rpsc_retry ;
 int bfa_fcs_rpf_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_rport_speed (int ,int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rpf_sm_rpsc(struct bfa_fcs_rpf_s *rpf, enum rpf_event event)
{
 struct bfa_fcs_rport_s *rport = rpf->rport;

 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 130:
  bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_online);

  if (rpf->rpsc_speed != BFA_PORT_SPEED_UNKNOWN)
   bfa_rport_speed(rport->bfa_rport, rpf->rpsc_speed);
  else if (rpf->assigned_speed != BFA_PORT_SPEED_UNKNOWN)
   bfa_rport_speed(rport->bfa_rport, rpf->assigned_speed);
  break;

 case 128:

  bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_online);
  break;

 case 129:

  if (rpf->rpsc_retries++ < BFA_FCS_RPF_RETRIES) {
   bfa_timer_start(rport->fcs->bfa, &rpf->timer,
        bfa_fcs_rpf_timeout, rpf,
        BFA_FCS_RPF_RETRY_TIMEOUT);
   bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_rpsc_retry);
  } else {
   bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_online);
  }
  break;

 case 131:
  bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_offline);
  bfa_fcxp_discard(rpf->fcxp);
  rpf->rpsc_retries = 0;
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
