
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int fsm; } ;
struct channel {int id; int retry; int timer; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_ERROR ;
 int CTC_EVENT_TIMER ;
 int CTC_STATE_TXERR ;
 int DEV_EVENT_TXDOWN ;
 int ERROR ;
 int * ctc_ch_event_names ;
 int ctcm_chx_restart (int *,int,void*) ;
 int dev_warn (int *,char*,int ) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_getstate_str (int *) ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void ctcm_chx_txiniterr(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;

 if (event == CTC_EVENT_TIMER) {
  fsm_deltimer(&ch->timer);
  if (ch->retry++ < 3)
   ctcm_chx_restart(fi, event, arg);
  else {
   fsm_newstate(fi, CTC_STATE_TXERR);
   fsm_event(priv->fsm, DEV_EVENT_TXDOWN, dev);
  }
 } else {
  CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
   "%s(%s): %s in %s", CTCM_FUNTAIL, ch->id,
   ctc_ch_event_names[event], fsm_getstate_str(fi));

  dev_warn(&dev->dev,
   "Initialization failed with RX/TX init handshake "
   "error %s\n", ctc_ch_event_names[event]);
 }
}
