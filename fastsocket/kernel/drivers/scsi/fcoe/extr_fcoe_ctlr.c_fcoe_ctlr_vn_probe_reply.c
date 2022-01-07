
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr {scalar_t__ port_id; int state; } ;
struct TYPE_2__ {scalar_t__ port_id; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;







 int fcoe_ctlr_vn_restart (struct fcoe_ctlr*) ;
 int fcoe_ctlr_vn_send_claim (struct fcoe_ctlr*) ;

__attribute__((used)) static void fcoe_ctlr_vn_probe_reply(struct fcoe_ctlr *fip,
       struct fc_rport_priv *rdata)
{
 if (rdata->ids.port_id != fip->port_id)
  return;
 switch (fip->state) {
 case 129:
 case 131:
 case 130:
 case 132:
  fcoe_ctlr_vn_restart(fip);
  break;
 case 128:
  fcoe_ctlr_vn_send_claim(fip);
  break;
 default:
  break;
 }
}
