
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_3__ {int logo_rcvd; } ;
struct bfa_fcs_rport_s {int reply_oxid; int pid; TYPE_1__ stats; struct bfa_fcs_lport_s* port; int fcs; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_2__* fabric; int fcs; } ;
struct TYPE_4__ {int vf_id; } ;


 int BFA_FALSE ;
 int FC_CLASS_3 ;
 int FC_MAX_PDUSZ ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (int ,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int ,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_logo_acc_build (struct fchs_s*,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_send_logo_acc(void *rport_cbarg)
{
 struct bfa_fcs_rport_s *rport = rport_cbarg;
 struct bfa_fcs_lport_s *port;
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 u16 len;

 bfa_trc(rport->fcs, rport->pid);

 port = rport->port;

 fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp)
  return;

 rport->stats.logo_rcvd++;
 len = fc_logo_acc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    rport->pid, bfa_fcs_lport_get_fcid(port),
    rport->reply_oxid);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
   FC_CLASS_3, len, &fchs, ((void*)0), ((void*)0), FC_MAX_PDUSZ, 0);
}
