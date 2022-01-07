
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_seq_els_data {int explan; int reason; } ;
struct fc_rport_priv {int rp_state; int rp_mutex; } ;
struct TYPE_4__ {int (* seq_els_rsp_send ) (struct fc_frame*,int const,struct fc_seq_els_data*) ;struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int ) ;} ;
struct TYPE_3__ {int disc_mutex; } ;
struct fc_lport {TYPE_2__ tt; TYPE_1__ disc; } ;
struct fc_frame {int dummy; } ;



 int ELS_EXPL_PLOGI_REQD ;
 int const ELS_LS_RJT ;



 int ELS_RJT_UNAB ;






 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_rport_recv_adisc_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_prli_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_prlo_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_rls_req (struct fc_rport_priv*,struct fc_frame*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,int ) ;
 int stub2 (struct fc_frame*,int const,struct fc_seq_els_data*) ;
 int stub3 (struct fc_frame*,int const,struct fc_seq_els_data*) ;
 int stub4 (struct fc_frame*,int const,struct fc_seq_els_data*) ;

__attribute__((used)) static void fc_rport_recv_els_req(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_rport_priv *rdata;
 struct fc_seq_els_data els_data;

 mutex_lock(&lport->disc.disc_mutex);
 rdata = lport->tt.rport_lookup(lport, fc_frame_sid(fp));
 if (!rdata) {
  mutex_unlock(&lport->disc.disc_mutex);
  goto reject;
 }
 mutex_lock(&rdata->rp_mutex);
 mutex_unlock(&lport->disc.disc_mutex);

 switch (rdata->rp_state) {
 case 130:
 case 128:
 case 129:
 case 131:
  break;
 default:
  mutex_unlock(&rdata->rp_mutex);
  goto reject;
 }

 switch (fc_frame_payload_op(fp)) {
 case 136:
  fc_rport_recv_prli_req(rdata, fp);
  break;
 case 135:
  fc_rport_recv_prlo_req(rdata, fp);
  break;
 case 137:
  fc_rport_recv_adisc_req(rdata, fp);
  break;
 case 132:
  lport->tt.seq_els_rsp_send(fp, 132, ((void*)0));
  fc_frame_free(fp);
  break;
 case 134:
  lport->tt.seq_els_rsp_send(fp, 134, ((void*)0));
  fc_frame_free(fp);
  break;
 case 133:
  fc_rport_recv_rls_req(rdata, fp);
  break;
 default:
  fc_frame_free(fp);
  break;
 }

 mutex_unlock(&rdata->rp_mutex);
 return;

reject:
 els_data.reason = ELS_RJT_UNAB;
 els_data.explan = ELS_EXPL_PLOGI_REQD;
 lport->tt.seq_els_rsp_send(fp, ELS_LS_RJT, &els_data);
 fc_frame_free(fp);
}
