
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct fchs_s {int ox_id; int s_id; int d_id; } ;
struct fc_rpsc_speed_info_s {int port_speed_cap; int port_op_speed; } ;
struct bfa_port_attr_s {int speed; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_5__ {int rpsc_rcvd; } ;
struct bfa_fcs_rport_s {TYPE_1__ stats; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_2__* fabric; TYPE_3__* fcs; } ;
struct TYPE_7__ {int bfa; } ;
struct TYPE_6__ {int vf_id; } ;


 int BFA_FALSE ;
 int FC_CLASS_3 ;
 int FC_MAX_PDUSZ ;
 int RPSC_SPEED_CAP_1G ;
 int RPSC_SPEED_CAP_2G ;
 int RPSC_SPEED_CAP_4G ;
 int RPSC_SPEED_CAP_8G ;
 int bfa_fcport_get_attr (int ,struct bfa_port_attr_s*) ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_3__*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int ,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_trc (TYPE_3__*,int ) ;
 int fc_bfa_speed_to_rpsc_operspeed (int ) ;
 int fc_rpsc_acc_build (struct fchs_s*,int ,int ,int ,int ,struct fc_rpsc_speed_info_s*) ;

__attribute__((used)) static void
bfa_fcs_rport_process_rpsc(struct bfa_fcs_rport_s *rport,
   struct fchs_s *rx_fchs, u16 len)
{
 struct bfa_fcxp_s *fcxp;
 struct fchs_s fchs;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fc_rpsc_speed_info_s speeds;
 struct bfa_port_attr_s pport_attr;

 bfa_trc(port->fcs, rx_fchs->s_id);
 bfa_trc(port->fcs, rx_fchs->d_id);

 rport->stats.rpsc_rcvd++;
 speeds.port_speed_cap =
  RPSC_SPEED_CAP_1G | RPSC_SPEED_CAP_2G | RPSC_SPEED_CAP_4G |
  RPSC_SPEED_CAP_8G;




 bfa_fcport_get_attr(port->fcs->bfa, &pport_attr);

 speeds.port_op_speed = fc_bfa_speed_to_rpsc_operspeed(pport_attr.speed);

 fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp)
  return;

 len = fc_rpsc_acc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
    rx_fchs->s_id, bfa_fcs_lport_get_fcid(port),
    rx_fchs->ox_id, &speeds);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
   FC_CLASS_3, len, &fchs, ((void*)0), ((void*)0), FC_MAX_PDUSZ, 0);
}
