
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int * channel; } ;
typedef int fsm_instance ;


 int CTCMY_DBF_DEV_NAME (int ,struct net_device*,char*) ;
 int DEV_EVENT_RXDOWN ;
 int DEV_EVENT_TXDOWN ;


 int DEV_STATE_STARTWAIT_RXTX ;

 int DEV_STATE_STOPPED ;



 scalar_t__ IS_MPC (struct ctcm_priv*) ;
 int MPC_CHANNEL_REMOVE ;
 size_t READ ;
 int SETUP ;
 size_t WRITE ;
 int fsm_getstate (int *) ;
 int fsm_newstate (int *,int) ;
 int mpc_channel_action (int ,size_t,int ) ;

__attribute__((used)) static void dev_action_chdown(fsm_instance *fi, int event, void *arg)
{

 struct net_device *dev = arg;
 struct ctcm_priv *priv = dev->ml_priv;

 CTCMY_DBF_DEV_NAME(SETUP, dev, "");

 switch (fsm_getstate(fi)) {
 case 133:
  if (event == DEV_EVENT_TXDOWN)
   fsm_newstate(fi, 131);
  else
   fsm_newstate(fi, 132);
  break;
 case 132:
  if (event == DEV_EVENT_TXDOWN)
   fsm_newstate(fi, DEV_STATE_STARTWAIT_RXTX);
  break;
 case 131:
  if (event == DEV_EVENT_RXDOWN)
   fsm_newstate(fi, DEV_STATE_STARTWAIT_RXTX);
  break;
 case 129:
  if (event == DEV_EVENT_TXDOWN)
   fsm_newstate(fi, 130);
  else
   fsm_newstate(fi, 128);
  break;
 case 130:
  if (event == DEV_EVENT_RXDOWN)
   fsm_newstate(fi, DEV_STATE_STOPPED);
  break;
 case 128:
  if (event == DEV_EVENT_TXDOWN)
   fsm_newstate(fi, DEV_STATE_STOPPED);
  break;
 }
 if (IS_MPC(priv)) {
  if (event == DEV_EVENT_RXDOWN)
   mpc_channel_action(priv->channel[READ],
    READ, MPC_CHANNEL_REMOVE);
  else
   mpc_channel_action(priv->channel[WRITE],
    WRITE, MPC_CHANNEL_REMOVE);
 }
}
