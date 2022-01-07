
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq_els_data {int explan; int reason; } ;
struct fc_rport_priv {struct fc_lport* local_port; } ;
struct TYPE_2__ {int (* seq_els_rsp_send ) (struct fc_frame*,int ,struct fc_seq_els_data*) ;int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;int (* get_lesb ) (struct fc_lport*,struct fc_els_lesb*) ;} ;
struct fc_host_statistics {int invalid_crc_count; int invalid_tx_word_count; int prim_seq_protocol_err_count; int loss_of_signal_count; int loss_of_sync_count; int link_failure_count; } ;
struct fc_lport {TYPE_1__ tt; struct fc_host_statistics host_stats; int host; } ;
struct fc_frame {int dummy; } ;
struct fc_els_lesb {void* lesb_inv_crc; void* lesb_inv_word; void* lesb_prim_err; void* lesb_sig_loss; void* lesb_sync_loss; void* lesb_link_fail; } ;
struct fc_els_rls_resp {struct fc_els_lesb rls_lesb; int rls_cmd; } ;
struct fc_els_rls {int dummy; } ;


 int ELS_EXPL_INSUF_RES ;
 int ELS_EXPL_INV_LEN ;
 int ELS_LS_ACC ;
 int ELS_LS_RJT ;
 int ELS_RJT_PROT ;
 int ELS_RJT_UNAB ;
 int FC_RCTL_ELS_REP ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_frame_free (struct fc_frame*) ;
 void* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_get_host_stats (int ) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 void* htonl (int ) ;
 int memset (struct fc_els_rls_resp*,int ,int) ;
 int stub1 (struct fc_lport*,struct fc_els_lesb*) ;
 int stub2 (struct fc_lport*,struct fc_frame*) ;
 int stub3 (struct fc_frame*,int ,struct fc_seq_els_data*) ;

__attribute__((used)) static void fc_rport_recv_rls_req(struct fc_rport_priv *rdata,
      struct fc_frame *rx_fp)

{
 struct fc_lport *lport = rdata->local_port;
 struct fc_frame *fp;
 struct fc_els_rls *rls;
 struct fc_els_rls_resp *rsp;
 struct fc_els_lesb *lesb;
 struct fc_seq_els_data rjt_data;
 struct fc_host_statistics *hst;

 FC_RPORT_DBG(rdata, "Received RLS request while in state %s\n",
       fc_rport_state(rdata));

 rls = fc_frame_payload_get(rx_fp, sizeof(*rls));
 if (!rls) {
  rjt_data.reason = ELS_RJT_PROT;
  rjt_data.explan = ELS_EXPL_INV_LEN;
  goto out_rjt;
 }

 fp = fc_frame_alloc(lport, sizeof(*rsp));
 if (!fp) {
  rjt_data.reason = ELS_RJT_UNAB;
  rjt_data.explan = ELS_EXPL_INSUF_RES;
  goto out_rjt;
 }

 rsp = fc_frame_payload_get(fp, sizeof(*rsp));
 memset(rsp, 0, sizeof(*rsp));
 rsp->rls_cmd = ELS_LS_ACC;
 lesb = &rsp->rls_lesb;
 if (lport->tt.get_lesb) {

  lport->tt.get_lesb(lport, lesb);
 } else {
  fc_get_host_stats(lport->host);
  hst = &lport->host_stats;
  lesb->lesb_link_fail = htonl(hst->link_failure_count);
  lesb->lesb_sync_loss = htonl(hst->loss_of_sync_count);
  lesb->lesb_sig_loss = htonl(hst->loss_of_signal_count);
  lesb->lesb_prim_err = htonl(hst->prim_seq_protocol_err_count);
  lesb->lesb_inv_word = htonl(hst->invalid_tx_word_count);
  lesb->lesb_inv_crc = htonl(hst->invalid_crc_count);
 }

 fc_fill_reply_hdr(fp, rx_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);
 goto out;

out_rjt:
 lport->tt.seq_els_rsp_send(rx_fp, ELS_LS_RJT, &rjt_data);
out:
 fc_frame_free(rx_fp);
}
