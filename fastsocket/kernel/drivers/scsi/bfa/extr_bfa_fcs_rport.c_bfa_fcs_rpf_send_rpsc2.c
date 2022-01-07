
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_5__ {int rpsc_sent; } ;
struct bfa_fcs_rport_s {TYPE_2__ stats; int pid; int pwwn; int fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_rpf_s {struct bfa_fcxp_s* fcxp; int fcxp_wqe; struct bfa_fcs_rport_s* rport; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; TYPE_3__* fcs; } ;
struct TYPE_6__ {int bfa; } ;
struct TYPE_4__ {int vf_id; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_ELS_TOV ;
 int FC_MAX_PDUSZ ;
 int RPFSM_EVENT_FCXP_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_3__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rpf_s*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rpf_rpsc2_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,struct bfa_fcs_rpf_s*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_rpsc2_build (struct fchs_s*,int ,int ,int ,int *,int) ;

__attribute__((used)) static void
bfa_fcs_rpf_send_rpsc2(void *rpf_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_rpf_s *rpf = (struct bfa_fcs_rpf_s *)rpf_cbarg;
 struct bfa_fcs_rport_s *rport = rpf->rport;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fchs_s fchs;
 int len;
 struct bfa_fcxp_s *fcxp;

 bfa_trc(rport->fcs, rport->pwwn);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &rpf->fcxp_wqe,
    bfa_fcs_rpf_send_rpsc2, rpf, BFA_TRUE);
  return;
 }
 rpf->fcxp = fcxp;

 len = fc_rpsc2_build(&fchs, bfa_fcxp_get_reqbuf(fcxp), rport->pid,
       bfa_fcs_lport_get_fcid(port), &rport->pid, 1);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
     FC_CLASS_3, len, &fchs, bfa_fcs_rpf_rpsc2_response,
     rpf, FC_MAX_PDUSZ, FC_ELS_TOV);
 rport->stats.rpsc_sent++;
 bfa_sm_send_event(rpf, RPFSM_EVENT_FCXP_SENT);

}
