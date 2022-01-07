
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_scn_s {struct bfa_fcxp_s* fcxp; int fcxp_wqe; struct bfa_fcs_lport_s* port; } ;
struct TYPE_7__ {int pwwn; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_3__* fabric; int pid; TYPE_4__* fcs; int vport; TYPE_1__ port_cfg; } ;
struct TYPE_11__ {int ioc; } ;
struct TYPE_10__ {TYPE_5__* bfa; } ;
struct TYPE_9__ {int vf_id; TYPE_2__* lps; } ;
struct TYPE_8__ {int brcd_switch; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_ELS_TOV ;
 int FC_MAX_PDUSZ ;
 int SCNSM_EVENT_SCR_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_4__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (TYPE_5__*,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_scn_s*,int ) ;
 int bfa_fcs_lport_scn_scr_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,void*,int ,int ) ;
 scalar_t__ bfa_ioc_get_fcmode (int *) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_scn_s*,int ) ;
 int bfa_trc (TYPE_4__*,int ) ;
 int fc_scr_build (struct fchs_s*,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_scn_send_scr(void *scn_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_lport_scn_s *scn = scn_cbarg;
 struct bfa_fcs_lport_s *port = scn->port;
 struct fchs_s fchs;
 int len;
 struct bfa_fcxp_s *fcxp;

 bfa_trc(port->fcs, port->pid);
 bfa_trc(port->fcs, port->port_cfg.pwwn);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &scn->fcxp_wqe,
    bfa_fcs_lport_scn_send_scr, scn, BFA_TRUE);
  return;
 }
 scn->fcxp = fcxp;


 if ((!port->vport) && bfa_ioc_get_fcmode(&port->fcs->bfa->ioc)) {
  len = fc_scr_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    port->fabric->lps->brcd_switch,
    port->pid, 0);
 } else {
     len = fc_scr_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
        BFA_FALSE,
        port->pid, 0);
 }

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
     FC_CLASS_3, len, &fchs,
     bfa_fcs_lport_scn_scr_response,
     (void *)scn, FC_MAX_PDUSZ, FC_ELS_TOV);

 bfa_sm_send_event(scn, SCNSM_EVENT_SCR_SENT);
}
