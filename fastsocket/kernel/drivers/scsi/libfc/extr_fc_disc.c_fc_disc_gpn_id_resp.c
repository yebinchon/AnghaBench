
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct fc_seq {int dummy; } ;
struct TYPE_3__ {int port_name; int port_id; } ;
struct fc_rport_priv {int kref; int disc_id; TYPE_1__ ids; struct fc_lport* local_port; } ;
struct fc_ns_gid_pn {int fn_wwpn; } ;
struct TYPE_4__ {int rport_destroy; int (* rport_logoff ) (struct fc_rport_priv*) ;int (* rport_login ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_create ) (struct fc_lport*,int ) ;} ;
struct fc_disc {int disc_mutex; int disc_id; } ;
struct fc_lport {TYPE_2__ tt; struct fc_disc disc; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int ct_cmd; int ct_explan; int ct_reason; } ;


 int FC_DISC_DBG (struct fc_disc*,char*,scalar_t__,...) ;
 int FC_EX_CLOSED ;
 scalar_t__ FC_FS_ACC ;
 scalar_t__ FC_FS_RJT ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 int fc_disc_restart (struct fc_disc*) ;
 struct fc_ct_hdr* fc_frame_payload_get (struct fc_frame*,int) ;
 int fr_len (struct fc_frame*) ;
 int get_unaligned_be64 (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ntohs (int ) ;
 int stub1 (struct fc_rport_priv*) ;
 struct fc_rport_priv* stub2 (struct fc_lport*,int ) ;
 int stub3 (struct fc_rport_priv*) ;
 int stub4 (struct fc_rport_priv*) ;
 int stub5 (struct fc_rport_priv*) ;

__attribute__((used)) static void fc_disc_gpn_id_resp(struct fc_seq *sp, struct fc_frame *fp,
    void *rdata_arg)
{
 struct fc_rport_priv *rdata = rdata_arg;
 struct fc_rport_priv *new_rdata;
 struct fc_lport *lport;
 struct fc_disc *disc;
 struct fc_ct_hdr *cp;
 struct fc_ns_gid_pn *pn;
 u64 port_name;

 lport = rdata->local_port;
 disc = &lport->disc;

 mutex_lock(&disc->disc_mutex);
 if (PTR_ERR(fp) == -FC_EX_CLOSED)
  goto out;
 if (IS_ERR(fp))
  goto redisc;

 cp = fc_frame_payload_get(fp, sizeof(*cp));
 if (!cp)
  goto redisc;
 if (ntohs(cp->ct_cmd) == FC_FS_ACC) {
  if (fr_len(fp) < sizeof(struct fc_frame_header) +
      sizeof(*cp) + sizeof(*pn))
   goto redisc;
  pn = (struct fc_ns_gid_pn *)(cp + 1);
  port_name = get_unaligned_be64(&pn->fn_wwpn);
  if (rdata->ids.port_name == -1)
   rdata->ids.port_name = port_name;
  else if (rdata->ids.port_name != port_name) {
   FC_DISC_DBG(disc, "GPN_ID accepted.  WWPN changed. "
        "Port-id %6.6x wwpn %16.16llx\n",
        rdata->ids.port_id, port_name);
   lport->tt.rport_logoff(rdata);

   new_rdata = lport->tt.rport_create(lport,
          rdata->ids.port_id);
   if (new_rdata) {
    new_rdata->disc_id = disc->disc_id;
    lport->tt.rport_login(new_rdata);
   }
   goto out;
  }
  rdata->disc_id = disc->disc_id;
  lport->tt.rport_login(rdata);
 } else if (ntohs(cp->ct_cmd) == FC_FS_RJT) {
  FC_DISC_DBG(disc, "GPN_ID rejected reason %x exp %x\n",
       cp->ct_reason, cp->ct_explan);
  lport->tt.rport_logoff(rdata);
 } else {
  FC_DISC_DBG(disc, "GPN_ID unexpected response code %x\n",
       ntohs(cp->ct_cmd));
redisc:
  fc_disc_restart(disc);
 }
out:
 mutex_unlock(&disc->disc_mutex);
 kref_put(&rdata->kref, lport->tt.rport_destroy);
}
