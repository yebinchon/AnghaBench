
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct fc_seq {int dummy; } ;
struct TYPE_5__ {void* node_name; void* port_name; } ;
struct fc_rport_priv {scalar_t__ rp_state; struct fc_lport* local_port; int kref; int rp_mutex; int maxframe_size; scalar_t__ max_seq; void* sp_features; TYPE_1__ ids; } ;
struct TYPE_8__ {int rport_destroy; } ;
struct fc_lport {TYPE_4__ tt; int mfs; scalar_t__ point_to_multipoint; } ;
struct fc_frame {int dummy; } ;
struct TYPE_6__ {int sp_tot_seq; int sp_features; } ;
struct fc_els_flogi {TYPE_3__* fl_cssp; TYPE_2__ fl_csp; int fl_wwnn; int fl_wwpn; } ;
struct TYPE_7__ {int cp_con_seq; } ;


 scalar_t__ ELS_LS_ACC ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 scalar_t__ RPORT_ST_PLOGI ;
 int fc_els_resp_type (struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_els_flogi* fc_frame_payload_get (struct fc_frame*,int) ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 int fc_plogi_get_maxframe (struct fc_els_flogi*,int ) ;
 int fc_rport_enter_prli (struct fc_rport_priv*) ;
 int fc_rport_error_retry (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_login_complete (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 void* get_unaligned_be64 (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* ntohs (int ) ;

__attribute__((used)) static void fc_rport_plogi_resp(struct fc_seq *sp, struct fc_frame *fp,
    void *rdata_arg)
{
 struct fc_rport_priv *rdata = rdata_arg;
 struct fc_lport *lport = rdata->local_port;
 struct fc_els_flogi *plp = ((void*)0);
 u16 csp_seq;
 u16 cssp_seq;
 u8 op;

 mutex_lock(&rdata->rp_mutex);

 FC_RPORT_DBG(rdata, "Received a PLOGI %s\n", fc_els_resp_type(fp));

 if (rdata->rp_state != RPORT_ST_PLOGI) {
  FC_RPORT_DBG(rdata, "Received a PLOGI response, but in state "
        "%s\n", fc_rport_state(rdata));
  if (IS_ERR(fp))
   goto err;
  goto out;
 }

 if (IS_ERR(fp)) {
  fc_rport_error_retry(rdata, fp);
  goto err;
 }

 op = fc_frame_payload_op(fp);
 if (op == ELS_LS_ACC &&
     (plp = fc_frame_payload_get(fp, sizeof(*plp))) != ((void*)0)) {
  rdata->ids.port_name = get_unaligned_be64(&plp->fl_wwpn);
  rdata->ids.node_name = get_unaligned_be64(&plp->fl_wwnn);


  rdata->sp_features = ntohs(plp->fl_csp.sp_features);

  if (lport->point_to_multipoint)
   fc_rport_login_complete(rdata, fp);
  csp_seq = ntohs(plp->fl_csp.sp_tot_seq);
  cssp_seq = ntohs(plp->fl_cssp[3 - 1].cp_con_seq);
  if (cssp_seq < csp_seq)
   csp_seq = cssp_seq;
  rdata->max_seq = csp_seq;
  rdata->maxframe_size = fc_plogi_get_maxframe(plp, lport->mfs);
  fc_rport_enter_prli(rdata);
 } else
  fc_rport_error_retry(rdata, fp);

out:
 fc_frame_free(fp);
err:
 mutex_unlock(&rdata->rp_mutex);
 kref_put(&rdata->kref, rdata->local_port->tt.rport_destroy);
}
