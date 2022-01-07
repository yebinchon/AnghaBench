
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {TYPE_2__ ids; struct fc_lport* local_port; } ;
struct TYPE_3__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_logo {int dummy; } ;


 int ELS_LOGO ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_rport_logo_resp ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int ) ;

__attribute__((used)) static void fc_rport_enter_logo(struct fc_rport_priv *rdata)
{
 struct fc_lport *lport = rdata->local_port;
 struct fc_frame *fp;

 FC_RPORT_DBG(rdata, "Port sending LOGO from %s state\n",
       fc_rport_state(rdata));

 fp = fc_frame_alloc(lport, sizeof(struct fc_els_logo));
 if (!fp)
  return;
 (void)lport->tt.elsct_send(lport, rdata->ids.port_id, fp, ELS_LOGO,
       fc_rport_logo_resp, lport, 0);
}
