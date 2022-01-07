
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {int kref; TYPE_2__ ids; struct fc_lport* local_port; } ;
struct TYPE_3__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_rport_priv*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; int point_to_multipoint; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int dummy; } ;


 int ELS_FLOGI ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 int RPORT_ST_FLOGI ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 void fc_rport_enter_plogi (struct fc_rport_priv*) ;
 void fc_rport_error_retry (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_flogi_resp ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int fc_rport_state_enter (struct fc_rport_priv*,int ) ;
 int kref_get (int *) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_rport_priv*,int) ;

__attribute__((used)) static void fc_rport_enter_flogi(struct fc_rport_priv *rdata)
{
 struct fc_lport *lport = rdata->local_port;
 struct fc_frame *fp;

 if (!lport->point_to_multipoint)
  return fc_rport_enter_plogi(rdata);

 FC_RPORT_DBG(rdata, "Entered FLOGI state from %s state\n",
       fc_rport_state(rdata));

 fc_rport_state_enter(rdata, RPORT_ST_FLOGI);

 fp = fc_frame_alloc(lport, sizeof(struct fc_els_flogi));
 if (!fp)
  return fc_rport_error_retry(rdata, fp);

 if (!lport->tt.elsct_send(lport, rdata->ids.port_id, fp, ELS_FLOGI,
      fc_rport_flogi_resp, rdata,
      2 * lport->r_a_tov))
  fc_rport_error_retry(rdata, ((void*)0));
 else
  kref_get(&rdata->kref);
}
