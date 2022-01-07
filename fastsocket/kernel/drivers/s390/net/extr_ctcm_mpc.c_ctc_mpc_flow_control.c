
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {int flow_off_called; int fsm; } ;
struct ctcm_priv {struct channel** channel; struct mpc_group* mpcg; } ;
struct channel {int ch_tasklet; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_DEBUG ;
 int MPCG_STATE_FLOWC ;
 int MPCG_STATE_READY ;
 int MPC_TRACE ;
 size_t READ ;
 struct net_device* ctcmpc_get_dev (int) ;
 int fsm_getstate (int ) ;
 int fsm_newstate (int ,int) ;
 int tasklet_schedule (int *) ;

void ctc_mpc_flow_control(int port_num, int flowc)
{
 struct ctcm_priv *priv;
 struct mpc_group *grp;
 struct net_device *dev;
 struct channel *rch;
 int mpcg_state;

 dev = ctcmpc_get_dev(port_num);
 if (dev == ((void*)0))
  return;
 priv = dev->ml_priv;
 grp = priv->mpcg;

 CTCM_DBF_TEXT_(MPC_TRACE, CTC_DBF_DEBUG,
   "%s: %s: flowc = %d",
    CTCM_FUNTAIL, dev->name, flowc);

 rch = priv->channel[READ];

 mpcg_state = fsm_getstate(grp->fsm);
 switch (flowc) {
 case 1:
  if (mpcg_state == MPCG_STATE_FLOWC)
   break;
  if (mpcg_state == MPCG_STATE_READY) {
   if (grp->flow_off_called == 1)
    grp->flow_off_called = 0;
   else
    fsm_newstate(grp->fsm, MPCG_STATE_FLOWC);
   break;
  }
  break;
 case 0:
  if (mpcg_state == MPCG_STATE_FLOWC) {
   fsm_newstate(grp->fsm, MPCG_STATE_READY);


   tasklet_schedule(&rch->ch_tasklet);
  }

  if (mpcg_state == MPCG_STATE_READY) {
   grp->flow_off_called = 1;
   break;
  }
  break;
 }

}
