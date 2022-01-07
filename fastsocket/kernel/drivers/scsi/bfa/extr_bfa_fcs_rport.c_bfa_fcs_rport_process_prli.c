
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int ox_id; int s_id; int d_id; } ;
struct TYPE_7__ {scalar_t__ target; } ;
struct TYPE_8__ {int type; TYPE_2__ servparams; } ;
struct fc_prli_s {TYPE_3__ parampage; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_6__ {int prli_rcvd; } ;
struct bfa_fcs_rport_s {int itnim; int scsi_function; int fcs; TYPE_1__ stats; struct bfa_fcs_lport_s* port; } ;
struct TYPE_9__ {int roles; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_5__* fabric; TYPE_4__ port_cfg; int fcs; } ;
struct TYPE_10__ {int vf_id; } ;


 int BFA_FALSE ;
 int BFA_RPORT_INITIATOR ;
 int BFA_RPORT_TARGET ;
 int FC_CLASS_3 ;
 int FC_MAX_PDUSZ ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (int ,int ) ;
 int bfa_fcs_itnim_is_initiator (int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int ,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_prli_acc_build (struct fchs_s*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_process_prli(struct bfa_fcs_rport_s *rport,
   struct fchs_s *rx_fchs, u16 len)
{
 struct bfa_fcxp_s *fcxp;
 struct fchs_s fchs;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fc_prli_s *prli;

 bfa_trc(port->fcs, rx_fchs->s_id);
 bfa_trc(port->fcs, rx_fchs->d_id);

 rport->stats.prli_rcvd++;




 prli = (struct fc_prli_s *) (rx_fchs + 1);

 if (prli->parampage.servparams.target) {






  bfa_trc(port->fcs, rx_fchs->s_id);
  rport->scsi_function = BFA_RPORT_TARGET;
 } else {
  bfa_trc(rport->fcs, prli->parampage.type);
  rport->scsi_function = BFA_RPORT_INITIATOR;
  bfa_fcs_itnim_is_initiator(rport->itnim);
 }

 fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp)
  return;

 len = fc_prli_acc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    rx_fchs->s_id, bfa_fcs_lport_get_fcid(port),
    rx_fchs->ox_id, port->port_cfg.roles);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
   FC_CLASS_3, len, &fchs, ((void*)0), ((void*)0), FC_MAX_PDUSZ, 0);
}
