
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int ox_id; int s_id; int d_id; } ;
struct fc_adisc_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_6__ {int adisc_rejected; int adisc_rcvd; } ;
struct bfa_fcs_rport_s {TYPE_3__ stats; int itnim; struct bfa_fcs_lport_s* port; } ;
struct TYPE_4__ {int nwwn; int pwwn; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_2__* fabric; TYPE_1__ port_cfg; int fcs; } ;
struct TYPE_5__ {int vf_id; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_STATUS_OK ;
 int FC_CLASS_3 ;
 int FC_LS_RJT_EXP_LOGIN_REQUIRED ;
 int FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD ;
 int FC_MAX_PDUSZ ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (int ,int ) ;
 scalar_t__ bfa_fcs_itnim_get_online_state (int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rport_send_ls_rjt (struct bfa_fcs_rport_s*,struct fchs_s*,int ,int ) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int ,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_adisc_acc_build (struct fchs_s*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_process_adisc(struct bfa_fcs_rport_s *rport,
   struct fchs_s *rx_fchs, u16 len)
{
 struct bfa_fcxp_s *fcxp;
 struct fchs_s fchs;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fc_adisc_s *adisc;

 bfa_trc(port->fcs, rx_fchs->s_id);
 bfa_trc(port->fcs, rx_fchs->d_id);

 rport->stats.adisc_rcvd++;

 adisc = (struct fc_adisc_s *) (rx_fchs + 1);





 if (bfa_fcs_itnim_get_online_state(rport->itnim) == BFA_STATUS_OK) {

  fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
  if (!fcxp)
   return;

  len = fc_adisc_acc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    rx_fchs->s_id, bfa_fcs_lport_get_fcid(port),
    rx_fchs->ox_id, port->port_cfg.pwwn,
    port->port_cfg.nwwn);

  bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag,
    BFA_FALSE, FC_CLASS_3, len, &fchs, ((void*)0), ((void*)0),
    FC_MAX_PDUSZ, 0);
 } else {
  rport->stats.adisc_rejected++;
  bfa_fcs_rport_send_ls_rjt(rport, rx_fchs,
       FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD,
       FC_LS_RJT_EXP_LOGIN_REQUIRED);
 }
}
