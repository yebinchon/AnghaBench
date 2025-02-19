
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_8__ {int ns_rffid_sent; int ns_rffid_alloc_wait; } ;
struct TYPE_6__ {int pwwn; } ;
struct bfa_fcs_lport_s {TYPE_3__ stats; int lp_tag; TYPE_2__* fabric; TYPE_4__* fcs; TYPE_1__ port_cfg; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcs_lport_s* port; struct bfa_fcxp_s* fcxp; int fcxp_wqe; } ;
struct TYPE_9__ {int bfa; } ;
struct TYPE_7__ {int vf_id; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_FCS_VPORT_IS_INITIATOR_MODE (struct bfa_fcs_lport_s*) ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_FCCT_TOV ;
 int FC_GS_FCP_FC4_FEATURE_INITIATOR ;
 int FC_MAX_PDUSZ ;
 int FC_TYPE_FCP ;
 int NSSM_EVENT_RFFID_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_4__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_ns_rff_id_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,void*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (TYPE_4__*,int ) ;
 int fc_rffid_build (struct fchs_s*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_send_rff_id(void *ns_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_lport_ns_s *ns = ns_cbarg;
 struct bfa_fcs_lport_s *port = ns->port;
 struct fchs_s fchs;
 int len;
 struct bfa_fcxp_s *fcxp;
 u8 fc4_ftrs = 0;

 bfa_trc(port->fcs, port->port_cfg.pwwn);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  port->stats.ns_rffid_alloc_wait++;
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &ns->fcxp_wqe,
    bfa_fcs_lport_ns_send_rff_id, ns, BFA_TRUE);
  return;
 }
 ns->fcxp = fcxp;

 if (BFA_FCS_VPORT_IS_INITIATOR_MODE(ns->port))
  fc4_ftrs = FC_GS_FCP_FC4_FEATURE_INITIATOR;

 len = fc_rffid_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
        bfa_fcs_lport_get_fcid(port), 0,
     FC_TYPE_FCP, fc4_ftrs);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
     FC_CLASS_3, len, &fchs,
     bfa_fcs_lport_ns_rff_id_response, (void *)ns,
     FC_MAX_PDUSZ, FC_FCCT_TOV);

 port->stats.ns_rffid_sent++;
 bfa_sm_send_event(ns, NSSM_EVENT_RFFID_SENT);
}
