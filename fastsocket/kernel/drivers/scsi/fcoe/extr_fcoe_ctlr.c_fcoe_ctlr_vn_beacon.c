
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fcoe_rport {int flags; scalar_t__ time; } ;
struct fcoe_ctlr {scalar_t__ state; scalar_t__ sol_time; struct fc_lport* lp; } ;
struct TYPE_6__ {scalar_t__ node_name; scalar_t__ port_name; int port_id; } ;
struct fc_rport_priv {TYPE_3__ ids; int kref; } ;
struct TYPE_5__ {int rport_destroy; int (* rport_login ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int ) ;} ;
struct TYPE_4__ {int disc_mutex; } ;
struct fc_lport {TYPE_2__ tt; TYPE_1__ disc; } ;


 int FIP_FL_REC_OR_P2P ;
 int FIP_SC_VN_PROBE_REQ ;
 scalar_t__ FIP_ST_VNMP_UP ;
 int FIP_VN_ANN_WAIT ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int ) ;
 int fcoe_all_vn2vn ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int fcoe_ctlr_vn_send (struct fcoe_ctlr*,int ,int ,int ) ;
 int fcoe_ctlr_vn_send_claim (struct fcoe_ctlr*) ;
 scalar_t__ jiffies ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,int ) ;
 int stub2 (struct fc_rport_priv*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void fcoe_ctlr_vn_beacon(struct fcoe_ctlr *fip,
    struct fc_rport_priv *new)
{
 struct fc_lport *lport = fip->lp;
 struct fc_rport_priv *rdata;
 struct fcoe_rport *frport;

 frport = fcoe_ctlr_rport(new);
 if (frport->flags & FIP_FL_REC_OR_P2P) {
  fcoe_ctlr_vn_send(fip, FIP_SC_VN_PROBE_REQ, fcoe_all_vn2vn, 0);
  return;
 }
 mutex_lock(&lport->disc.disc_mutex);
 rdata = lport->tt.rport_lookup(lport, new->ids.port_id);
 if (rdata)
  kref_get(&rdata->kref);
 mutex_unlock(&lport->disc.disc_mutex);
 if (rdata) {
  if (rdata->ids.node_name == new->ids.node_name &&
      rdata->ids.port_name == new->ids.port_name) {
   frport = fcoe_ctlr_rport(rdata);
   if (!frport->time && fip->state == FIP_ST_VNMP_UP)
    lport->tt.rport_login(rdata);
   frport->time = jiffies;
  }
  kref_put(&rdata->kref, lport->tt.rport_destroy);
  return;
 }
 if (fip->state != FIP_ST_VNMP_UP)
  return;






 LIBFCOE_FIP_DBG(fip, "beacon from new rport %x. sending claim notify\n",
   new->ids.port_id);
 if (time_after(jiffies,
         fip->sol_time + msecs_to_jiffies(FIP_VN_ANN_WAIT)))
  fcoe_ctlr_vn_send_claim(fip);
}
