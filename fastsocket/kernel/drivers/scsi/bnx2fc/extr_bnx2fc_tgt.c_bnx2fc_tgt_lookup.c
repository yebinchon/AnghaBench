
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct TYPE_2__ {scalar_t__ port_id; } ;
struct fc_rport_priv {scalar_t__ rp_state; TYPE_1__ ids; } ;
struct bnx2fc_rport {struct fc_rport_priv* rdata; struct fcoe_port* port; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {struct bnx2fc_rport** tgt_ofld_list; } ;


 int BNX2FC_NUM_MAX_SESS ;
 int BNX2FC_TGT_DBG (struct bnx2fc_rport*,char*,...) ;
 scalar_t__ RPORT_ST_DELETE ;

struct bnx2fc_rport *bnx2fc_tgt_lookup(struct fcoe_port *port,
          u32 port_id)
{
 struct bnx2fc_interface *interface = port->priv;
 struct bnx2fc_hba *hba = interface->hba;
 struct bnx2fc_rport *tgt;
 struct fc_rport_priv *rdata;
 int i;

 for (i = 0; i < BNX2FC_NUM_MAX_SESS; i++) {
  tgt = hba->tgt_ofld_list[i];
  if ((tgt) && (tgt->port == port)) {
   rdata = tgt->rdata;
   if (rdata->ids.port_id == port_id) {
    if (rdata->rp_state != RPORT_ST_DELETE) {
     BNX2FC_TGT_DBG(tgt, "rport "
      "obtained\n");
     return tgt;
    } else {
     BNX2FC_TGT_DBG(tgt, "rport 0x%x "
      "is in DELETED state\n",
      rdata->ids.port_id);
     return ((void*)0);
    }
   }
  }
 }
 return ((void*)0);
}
