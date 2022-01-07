
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; struct ctcm_priv* ml_priv; int name; } ;
struct ctcm_priv {int * channel; } ;
typedef int fsm_instance ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,struct ctcm_priv*,int,int) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_NOTICE ;
 int DEV_EVENT_RXUP ;
 int DEV_EVENT_TXUP ;
 int DEV_STATE_RUNNING ;




 int DEV_STATE_STOPWAIT_RXTX ;

 scalar_t__ IS_MPC (struct ctcm_priv*) ;
 int MPC_CHANNEL_ADD ;
 size_t READ ;
 int SETUP ;
 size_t WRITE ;
 int ctcm_clear_busy (struct net_device*) ;
 int dev_info (int *,char*) ;
 int fsm_getstate (int *) ;
 int fsm_newstate (int *,int) ;
 int mpc_channel_action (int ,size_t,int ) ;

__attribute__((used)) static void dev_action_chup(fsm_instance *fi, int event, void *arg)
{
 struct net_device *dev = arg;
 struct ctcm_priv *priv = dev->ml_priv;
 int dev_stat = fsm_getstate(fi);

 CTCM_DBF_TEXT_(SETUP, CTC_DBF_NOTICE,
   "%s(%s): priv = %p [%d,%d]\n ", CTCM_FUNTAIL,
    dev->name, dev->ml_priv, dev_stat, event);

 switch (fsm_getstate(fi)) {
 case 131:
  if (event == DEV_EVENT_RXUP)
   fsm_newstate(fi, 130);
  else
   fsm_newstate(fi, 132);
  break;
 case 132:
  if (event == DEV_EVENT_RXUP) {
   fsm_newstate(fi, DEV_STATE_RUNNING);
   dev_info(&dev->dev,
    "Connected with remote side\n");
   ctcm_clear_busy(dev);
  }
  break;
 case 130:
  if (event == DEV_EVENT_TXUP) {
   fsm_newstate(fi, DEV_STATE_RUNNING);
   dev_info(&dev->dev,
    "Connected with remote side\n");
   ctcm_clear_busy(dev);
  }
  break;
 case 128:
  if (event == DEV_EVENT_RXUP)
   fsm_newstate(fi, DEV_STATE_STOPWAIT_RXTX);
  break;
 case 129:
  if (event == DEV_EVENT_TXUP)
   fsm_newstate(fi, DEV_STATE_STOPWAIT_RXTX);
  break;
 }

 if (IS_MPC(priv)) {
  if (event == DEV_EVENT_RXUP)
   mpc_channel_action(priv->channel[READ],
    READ, MPC_CHANNEL_ADD);
  else
   mpc_channel_action(priv->channel[WRITE],
    WRITE, MPC_CHANNEL_ADD);
 }
}
