
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_5__ {int logos; } ;
struct bfa_fcs_rport_s {struct bfa_fcxp_s* fcxp; TYPE_2__ stats; int pid; int fcxp_wqe; struct bfa_fcs_lport_s* port; int fcs; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; TYPE_3__* fcs; } ;
struct TYPE_6__ {int bfa; } ;
struct TYPE_4__ {int vf_id; } ;


 int BFA_FALSE ;
 int FC_CLASS_3 ;
 int FC_ELS_TOV ;
 int FC_MAX_PDUSZ ;
 int RPSM_EVENT_FCXP_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_3__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rport_s*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_discard (struct bfa_fcxp_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int ,struct fchs_s*,int *,struct bfa_fcs_rport_s*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_logo_build (struct fchs_s*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_send_logo(void *rport_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_rport_s *rport = rport_cbarg;
 struct bfa_fcs_lport_s *port;
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 u16 len;

 bfa_trc(rport->fcs, rport->pid);

 port = rport->port;

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &rport->fcxp_wqe,
    bfa_fcs_rport_send_logo, rport, BFA_FALSE);
  return;
 }
 rport->fcxp = fcxp;

 len = fc_logo_build(&fchs, bfa_fcxp_get_reqbuf(fcxp), rport->pid,
    bfa_fcs_lport_get_fcid(port), 0,
    bfa_fcs_lport_get_pwwn(port));

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
   FC_CLASS_3, len, &fchs, ((void*)0),
   rport, FC_MAX_PDUSZ, FC_ELS_TOV);

 rport->stats.logos++;
 bfa_fcxp_discard(rport->fcxp);
 bfa_sm_send_event(rport, RPSM_EVENT_FCXP_SENT);
}
