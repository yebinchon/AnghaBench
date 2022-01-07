
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int restart_timer; TYPE_1__* mpcg; int fsm; } ;
typedef int fsm_instance ;
struct TYPE_2__ {int fsm; } ;


 int CTCMY_DBF_DEV_NAME (int ,struct net_device*,char*) ;
 int CTCM_TIME_1_SEC ;
 int CTCM_TIME_5_SEC ;
 int DEV_EVENT_START ;
 int DEV_EVENT_STOP ;
 scalar_t__ IS_MPC (struct ctcm_priv*) ;
 int MPCG_STATE_RESET ;
 int TRACE ;
 int dev_action_stop (int *,int,void*) ;
 int dev_info (int *,char*) ;
 int fsm_addtimer (int *,int,int ,struct net_device*) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_newstate (int ,int ) ;

__attribute__((used)) static void dev_action_restart(fsm_instance *fi, int event, void *arg)
{
 int restart_timer;
 struct net_device *dev = arg;
 struct ctcm_priv *priv = dev->ml_priv;

 CTCMY_DBF_DEV_NAME(TRACE, dev, "");

 if (IS_MPC(priv)) {
  restart_timer = CTCM_TIME_1_SEC;
 } else {
  restart_timer = CTCM_TIME_5_SEC;
 }
 dev_info(&dev->dev, "Restarting device\n");

 dev_action_stop(fi, event, arg);
 fsm_event(priv->fsm, DEV_EVENT_STOP, dev);
 if (IS_MPC(priv))
  fsm_newstate(priv->mpcg->fsm, MPCG_STATE_RESET);




 fsm_addtimer(&priv->restart_timer, restart_timer,
   DEV_EVENT_START, dev);
}
