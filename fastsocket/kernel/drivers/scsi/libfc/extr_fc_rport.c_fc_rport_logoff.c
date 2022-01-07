
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {scalar_t__ rp_state; int rp_mutex; int flags; } ;


 int FC_RPORT_DBG (struct fc_rport_priv*,char*) ;
 int FC_RP_STARTED ;
 int RPORT_EV_STOP ;
 scalar_t__ RPORT_ST_DELETE ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 int fc_rport_enter_logo (struct fc_rport_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fc_rport_logoff(struct fc_rport_priv *rdata)
{
 mutex_lock(&rdata->rp_mutex);

 FC_RPORT_DBG(rdata, "Remove port\n");

 rdata->flags &= ~FC_RP_STARTED;
 if (rdata->rp_state == RPORT_ST_DELETE) {
  FC_RPORT_DBG(rdata, "Port in Delete state, not removing\n");
  goto out;
 }
 fc_rport_enter_logo(rdata);





 fc_rport_enter_delete(rdata, RPORT_EV_STOP);
out:
 mutex_unlock(&rdata->rp_mutex);
 return 0;
}
