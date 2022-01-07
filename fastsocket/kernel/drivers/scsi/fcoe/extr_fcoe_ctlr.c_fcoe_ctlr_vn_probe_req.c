
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fcoe_rport {int flags; int enode_mac; } ;
struct fcoe_ctlr {scalar_t__ port_id; int state; TYPE_2__* lp; } ;
struct TYPE_3__ {scalar_t__ port_id; int port_name; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct TYPE_4__ {int wwpn; } ;


 int FIP_FL_REC_OR_P2P ;
 int FIP_SC_VN_PROBE_REP ;





 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;

__attribute__((used)) static void fcoe_ctlr_vn_probe_req(struct fcoe_ctlr *fip,
       struct fc_rport_priv *rdata)
{
 struct fcoe_rport *frport = fcoe_ctlr_rport(rdata);

 if (rdata->ids.port_id != fip->port_id)
  return;

 switch (fip->state) {
 case 132:
 case 128:
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REP,
      frport->enode_mac, 0);
  break;
 case 131:
 case 130:







  if (fip->lp->wwpn > rdata->ids.port_name &&
      !(frport->flags & FIP_FL_REC_OR_P2P)) {
   fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REP,
       frport->enode_mac, 0);
   break;
  }

 case 129:
  fcoe_ctlr_vn_restart(fip);
  break;
 default:
  break;
 }
}
