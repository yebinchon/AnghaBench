
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {int rp_state; int flags; int retries; } ;
struct fc_frame {int dummy; } ;


 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ,int ,int ) ;
 int FC_RP_STARTED ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 int RPORT_EV_FAILED ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 int fc_rport_enter_logo (struct fc_rport_priv*) ;
 int fc_rport_enter_ready (struct fc_rport_priv*) ;
 int fc_rport_state (struct fc_rport_priv*) ;

__attribute__((used)) static void fc_rport_error(struct fc_rport_priv *rdata, struct fc_frame *fp)
{
 FC_RPORT_DBG(rdata, "Error %ld in state %s, retries %d\n",
       IS_ERR(fp) ? -PTR_ERR(fp) : 0,
       fc_rport_state(rdata), rdata->retries);

 switch (rdata->rp_state) {
 case 134:
 case 132:
  rdata->flags &= ~FC_RP_STARTED;
  fc_rport_enter_delete(rdata, RPORT_EV_FAILED);
  break;
 case 128:
  fc_rport_enter_ready(rdata);
  break;
 case 130:
 case 136:
  fc_rport_enter_logo(rdata);
  break;
 case 131:
 case 135:
 case 129:
 case 133:
  break;
 }
}
