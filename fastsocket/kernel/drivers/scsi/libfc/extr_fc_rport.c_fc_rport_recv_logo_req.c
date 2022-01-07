
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fc_rport_priv {int rp_mutex; } ;
struct TYPE_3__ {int disc_mutex; } ;
struct TYPE_4__ {struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int ) ;int (* seq_els_rsp_send ) (struct fc_frame*,int ,int *) ;} ;
struct fc_lport {TYPE_1__ disc; TYPE_2__ tt; } ;
struct fc_frame {int dummy; } ;


 int ELS_LS_ACC ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*) ;
 int RPORT_EV_LOGO ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_frame*,int ,int *) ;
 struct fc_rport_priv* stub2 (struct fc_lport*,int ) ;

__attribute__((used)) static void fc_rport_recv_logo_req(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_rport_priv *rdata;
 u32 sid;

 lport->tt.seq_els_rsp_send(fp, ELS_LS_ACC, ((void*)0));

 sid = fc_frame_sid(fp);

 mutex_lock(&lport->disc.disc_mutex);
 rdata = lport->tt.rport_lookup(lport, sid);
 if (rdata) {
  mutex_lock(&rdata->rp_mutex);
  FC_RPORT_DBG(rdata, "Received LOGO request while in state %s\n",
        fc_rport_state(rdata));

  fc_rport_enter_delete(rdata, RPORT_EV_LOGO);
  mutex_unlock(&rdata->rp_mutex);
 } else
  FC_RPORT_ID_DBG(lport, sid,
    "Received LOGO from non-logged-in port\n");
 mutex_unlock(&lport->disc.disc_mutex);
 fc_frame_free(fp);
}
