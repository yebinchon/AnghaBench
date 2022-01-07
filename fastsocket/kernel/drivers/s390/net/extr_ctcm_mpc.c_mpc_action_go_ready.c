
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {int send_qllc_disc; int port_persist; int mpc_tasklet2; scalar_t__ estconn_called; scalar_t__ out_of_sequence; int fsm; scalar_t__ allochanfunc; int (* estconnfunc ) (int ,int,int ) ;int group_max_buflen; int port_num; TYPE_1__* saved_xid2; int timer; } ;
struct ctcm_priv {TYPE_2__* xid; struct mpc_group* mpcg; } ;
typedef int fsm_instance ;
struct TYPE_4__ {int xid2_flag2; } ;
struct TYPE_3__ {int xid2_flag2; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_ERROR ;
 int MPCG_EVENT_INOP ;
 int MPC_ERROR ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int stub1 (int ,int,int ) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void mpc_action_go_ready(fsm_instance *fsm, int event, void *arg)
{
 struct net_device *dev = arg;
 struct ctcm_priv *priv = dev->ml_priv;
 struct mpc_group *grp = priv->mpcg;

 if (grp == ((void*)0)) {
  CTCM_DBF_TEXT_(MPC_ERROR, CTC_DBF_ERROR,
   "%s(%s): No MPC group",
    CTCM_FUNTAIL, dev->name);
  return;
 }

 fsm_deltimer(&grp->timer);

 if (grp->saved_xid2->xid2_flag2 == 0x40) {
  priv->xid->xid2_flag2 = 0x00;
  if (grp->estconnfunc) {
   grp->estconnfunc(grp->port_num, 1,
     grp->group_max_buflen);
   grp->estconnfunc = ((void*)0);
  } else if (grp->allochanfunc)
   grp->send_qllc_disc = 1;

  fsm_event(grp->fsm, MPCG_EVENT_INOP, dev);
  CTCM_DBF_TEXT_(MPC_ERROR, CTC_DBF_ERROR,
    "%s(%s): fails",
     CTCM_FUNTAIL, dev->name);
  return;
 }

 grp->port_persist = 1;
 grp->out_of_sequence = 0;
 grp->estconn_called = 0;

 tasklet_hi_schedule(&grp->mpc_tasklet2);

 return;
}
