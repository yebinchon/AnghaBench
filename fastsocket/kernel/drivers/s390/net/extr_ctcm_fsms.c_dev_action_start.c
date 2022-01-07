
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {struct channel** channel; TYPE_1__* mpcg; int restart_timer; } ;
struct channel {int fsm; } ;
typedef int fsm_instance ;
struct TYPE_2__ {scalar_t__ channels_terminating; } ;


 int CTCMY_DBF_DEV_NAME (int ,struct net_device*,char*) ;
 int CTC_EVENT_START ;
 int DEV_STATE_STARTWAIT_RXTX ;
 scalar_t__ IS_MPC (struct ctcm_priv*) ;
 int READ ;
 int SETUP ;
 int WRITE ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct channel*) ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void dev_action_start(fsm_instance *fi, int event, void *arg)
{
 struct net_device *dev = arg;
 struct ctcm_priv *priv = dev->ml_priv;
 int direction;

 CTCMY_DBF_DEV_NAME(SETUP, dev, "");

 fsm_deltimer(&priv->restart_timer);
 fsm_newstate(fi, DEV_STATE_STARTWAIT_RXTX);
 if (IS_MPC(priv))
  priv->mpcg->channels_terminating = 0;
 for (direction = READ; direction <= WRITE; direction++) {
  struct channel *ch = priv->channel[direction];
  fsm_event(ch->fsm, CTC_EVENT_START, ch);
 }
}
