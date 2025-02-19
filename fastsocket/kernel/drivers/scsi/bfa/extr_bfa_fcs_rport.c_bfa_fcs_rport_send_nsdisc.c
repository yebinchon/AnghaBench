
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int pid; scalar_t__ pwwn; struct bfa_fcxp_s* fcxp; int fcxp_wqe; int fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; TYPE_2__* fcs; } ;
typedef int bfa_cb_fcxp_send_t ;
struct TYPE_4__ {int bfa; } ;
struct TYPE_3__ {int vf_id; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_FCCT_TOV ;
 int FC_MAX_PDUSZ ;
 int RPSM_EVENT_FCXP_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_2__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rport_s*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rport_gidpn_response ;
 int bfa_fcs_rport_gpnid_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,void*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_gidpn_build (struct fchs_s*,int ,int ,int ,scalar_t__) ;
 int fc_gpnid_build (struct fchs_s*,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_send_nsdisc(void *rport_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_rport_s *rport = rport_cbarg;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 int len;
 bfa_cb_fcxp_send_t cbfn;

 bfa_trc(rport->fcs, rport->pid);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &rport->fcxp_wqe,
    bfa_fcs_rport_send_nsdisc, rport, BFA_TRUE);
  return;
 }
 rport->fcxp = fcxp;

 if (rport->pwwn) {
  len = fc_gidpn_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    bfa_fcs_lport_get_fcid(port), 0, rport->pwwn);
  cbfn = bfa_fcs_rport_gidpn_response;
 } else {
  len = fc_gpnid_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    bfa_fcs_lport_get_fcid(port), 0, rport->pid);
  cbfn = bfa_fcs_rport_gpnid_response;
 }

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
   FC_CLASS_3, len, &fchs, cbfn,
   (void *)rport, FC_MAX_PDUSZ, FC_FCCT_TOV);

 bfa_sm_send_event(rport, RPSM_EVENT_FCXP_SENT);
}
