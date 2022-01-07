
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fcoe_rport {scalar_t__ time; scalar_t__ fcoe_len; } ;
struct fcoe_ctlr {scalar_t__ port_id; struct fc_lport* lp; } ;
struct fc_rport_identifiers {scalar_t__ port_id; int port_name; int node_name; } ;
struct fc_rport_priv {struct fc_rport_identifiers ids; int disc_id; int * ops; } ;
struct TYPE_4__ {int disc_mutex; int disc_id; } ;
struct TYPE_3__ {int (* rport_logoff ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_create ) (struct fc_lport*,scalar_t__) ;} ;
struct fc_lport {TYPE_2__ disc; TYPE_1__ tt; } ;


 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,scalar_t__,char*) ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_rport_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,scalar_t__) ;
 int stub2 (struct fc_rport_priv*) ;

__attribute__((used)) static void fcoe_ctlr_vn_add(struct fcoe_ctlr *fip, struct fc_rport_priv *new)
{
 struct fc_lport *lport = fip->lp;
 struct fc_rport_priv *rdata;
 struct fc_rport_identifiers *ids;
 struct fcoe_rport *frport;
 u32 port_id;

 port_id = new->ids.port_id;
 if (port_id == fip->port_id)
  return;

 mutex_lock(&lport->disc.disc_mutex);
 rdata = lport->tt.rport_create(lport, port_id);
 if (!rdata) {
  mutex_unlock(&lport->disc.disc_mutex);
  return;
 }

 rdata->ops = &fcoe_ctlr_vn_rport_ops;
 rdata->disc_id = lport->disc.disc_id;

 ids = &rdata->ids;
 if ((ids->port_name != -1 && ids->port_name != new->ids.port_name) ||
     (ids->node_name != -1 && ids->node_name != new->ids.node_name))
  lport->tt.rport_logoff(rdata);
 ids->port_name = new->ids.port_name;
 ids->node_name = new->ids.node_name;
 mutex_unlock(&lport->disc.disc_mutex);

 frport = fcoe_ctlr_rport(rdata);
 LIBFCOE_FIP_DBG(fip, "vn_add rport %6.6x %s\n",
   port_id, frport->fcoe_len ? "old" : "new");
 *frport = *fcoe_ctlr_rport(new);
 frport->time = 0;
}
