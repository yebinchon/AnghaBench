
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_rport_priv {int * ops; } ;
struct TYPE_3__ {int (* rport_login ) (struct fc_rport_priv*) ;struct fc_rport_priv* (* rport_create ) (struct fc_lport*,int ) ;} ;
struct TYPE_4__ {int disc_mutex; } ;
struct fc_lport {TYPE_1__ tt; TYPE_2__ disc; } ;


 int FC_FID_MGMT_SERV ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int LPORT_ST_FDMI ;
 int fc_lport_error (struct fc_lport*,int *) ;
 int fc_lport_rport_ops ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fc_rport_priv* stub1 (struct fc_lport*,int ) ;
 int stub2 (struct fc_rport_priv*) ;

__attribute__((used)) static void fc_lport_enter_fdmi(struct fc_lport *lport)
{
 struct fc_rport_priv *rdata;

 FC_LPORT_DBG(lport, "Entered FDMI state from %s state\n",
       fc_lport_state(lport));

 fc_lport_state_enter(lport, LPORT_ST_FDMI);

 mutex_lock(&lport->disc.disc_mutex);
 rdata = lport->tt.rport_create(lport, FC_FID_MGMT_SERV);
 mutex_unlock(&lport->disc.disc_mutex);
 if (!rdata)
  goto err;

 rdata->ops = &fc_lport_rport_ops;
 lport->tt.rport_login(rdata);
 return;

err:
 fc_lport_error(lport, ((void*)0));
}
