
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fcoe_rport {int flags; int fcoe_len; int enode_mac; } ;
struct fcoe_ctlr {int state; TYPE_2__* lp; int port_id; } ;
struct TYPE_3__ {int port_name; int port_id; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct TYPE_4__ {int wwpn; } ;


 int FIP_FL_REC_OR_P2P ;
 int FIP_SC_VN_CLAIM_REP ;
 int FIP_SC_VN_PROBE_REQ ;





 int fcoe_all_vn2vn ;
 int fcoe_ctlr_fcoe_size (struct fcoe_ctlr*) ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_add (struct fcoe_ctlr*,struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;
 int fcoe_ctlr_vn_send_claim (struct fcoe_ctlr*) ;
 int min (int ,int ) ;

__attribute__((used)) static void fcoe_ctlr_vn_claim_notify(struct fcoe_ctlr *fip,
          struct fc_rport_priv *new)
{
 struct fcoe_rport *frport = fcoe_ctlr_rport(new);

 if (frport->flags & FIP_FL_REC_OR_P2P) {
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
  return;
 }
 switch (fip->state) {
 case 129:
 case 131:
 case 130:
  if (new->ids.port_id == fip->port_id)
   fcoe_ctlr_vn_restart(fip);
  break;
 case 132:
 case 128:
  if (new->ids.port_id == fip->port_id) {
   if (new->ids.port_name > fip->lp->wwpn) {
    fcoe_ctlr_vn_restart(fip);
    break;
   }
   fcoe_ctlr_vn_send_claim(fip);
   break;
  }
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_CLAIM_REP, frport->enode_mac,
      min((u32)frport->fcoe_len,
          fcoe_ctlr_fcoe_size(fip)));
  fcoe_ctlr_vn_add(fip, new);
  break;
 default:
  break;
 }
}
