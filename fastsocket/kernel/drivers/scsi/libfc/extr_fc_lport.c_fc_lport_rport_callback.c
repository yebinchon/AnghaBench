
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {TYPE_2__ ids; } ;
struct TYPE_3__ {int (* rport_logoff ) (struct fc_rport_priv*) ;} ;
struct fc_lport {int state; int lp_mutex; struct fc_rport_priv* ms_rdata; struct fc_rport_priv* dns_rdata; TYPE_1__ tt; } ;
typedef enum fc_rport_event { ____Placeholder_fc_rport_event } fc_rport_event ;


 int FC_FID_DIR_SERV ;
 int FC_FID_MGMT_SERV ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int,int) ;
 int LPORT_ST_DHBA ;
 int LPORT_ST_DNS ;
 int LPORT_ST_FDMI ;
 int LPORT_ST_RNN_ID ;





 int fc_lport_enter_ms (struct fc_lport*,int ) ;
 int fc_lport_enter_ns (struct fc_lport*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_rport_priv*) ;

__attribute__((used)) static void fc_lport_rport_callback(struct fc_lport *lport,
        struct fc_rport_priv *rdata,
        enum fc_rport_event event)
{
 FC_LPORT_DBG(lport, "Received a %d event for port (%6.6x)\n", event,
       rdata->ids.port_id);

 mutex_lock(&lport->lp_mutex);
 switch (event) {
 case 129:
  if (lport->state == LPORT_ST_DNS) {
   lport->dns_rdata = rdata;
   fc_lport_enter_ns(lport, LPORT_ST_RNN_ID);
  } else if (lport->state == LPORT_ST_FDMI) {
   lport->ms_rdata = rdata;
   fc_lport_enter_ms(lport, LPORT_ST_DHBA);
  } else {
   FC_LPORT_DBG(lport, "Received an READY event "
         "on port (%6.6x) for the directory "
         "server, but the lport is not "
         "in the DNS or FDMI state, it's in the "
         "%d state", rdata->ids.port_id,
         lport->state);
   lport->tt.rport_logoff(rdata);
  }
  break;
 case 131:
 case 132:
 case 128:
  if (rdata->ids.port_id == FC_FID_DIR_SERV)
   lport->dns_rdata = ((void*)0);
  else if (rdata->ids.port_id == FC_FID_MGMT_SERV)
   lport->ms_rdata = ((void*)0);
  break;
 case 130:
  break;
 }
 mutex_unlock(&lport->lp_mutex);
}
