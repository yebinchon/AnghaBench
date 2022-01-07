
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int fsm; } ;
struct channel {int flags; int cdev; int timer; struct net_device* netdev; } ;
typedef int fsm_instance ;


 scalar_t__ CHANNEL_DIRECTION (int ) ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ,char*,int ) ;
 int CTCM_FUNTAIL ;
 int CTCM_TIME_5_SEC ;
 int CTC_DBF_CRIT ;
 int CTC_EVENT_TIMER ;
 int CTC_EVENT_UC_RCRESET ;
 int CTC_EVENT_UC_RSRESET ;
 int CTC_STATE_RXERR ;
 scalar_t__ CTC_STATE_SETUPWAIT ;
 int CTC_STATE_STARTRETRY ;
 int CTC_STATE_TXERR ;
 int DEV_EVENT_RXDOWN ;
 int DEV_EVENT_TXDOWN ;
 int ERROR ;
 int IS_MPC (struct channel*) ;
 scalar_t__ READ ;
 int ccw_device_halt (int ,unsigned long) ;
 int * ctc_ch_event_names ;
 int ctcm_ccw_check_rc (struct channel*,int,char*) ;
 int fsm_addtimer (int *,int ,int ,struct channel*) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 scalar_t__ fsm_getstate (int *) ;
 int fsm_getstate_str (int *) ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void ctcm_chx_setuperr(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;






 if ((fsm_getstate(fi) == CTC_STATE_SETUPWAIT) &&
     ((event == CTC_EVENT_UC_RCRESET) ||
      (event == CTC_EVENT_UC_RSRESET))) {
  fsm_newstate(fi, CTC_STATE_STARTRETRY);
  fsm_deltimer(&ch->timer);
  fsm_addtimer(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
  if (!IS_MPC(ch) && (CHANNEL_DIRECTION(ch->flags) == READ)) {
   int rc = ccw_device_halt(ch->cdev, (unsigned long)ch);
   if (rc != 0)
    ctcm_ccw_check_rc(ch, rc,
     "HaltIO in chx_setuperr");
  }
  return;
 }

 CTCM_DBF_TEXT_(ERROR, CTC_DBF_CRIT,
  "%s(%s) : %s error during %s channel setup state=%s\n",
  CTCM_FUNTAIL, dev->name, ctc_ch_event_names[event],
  (CHANNEL_DIRECTION(ch->flags) == READ) ? "RX" : "TX",
  fsm_getstate_str(fi));

 if (CHANNEL_DIRECTION(ch->flags) == READ) {
  fsm_newstate(fi, CTC_STATE_RXERR);
  fsm_event(priv->fsm, DEV_EVENT_RXDOWN, dev);
 } else {
  fsm_newstate(fi, CTC_STATE_TXERR);
  fsm_event(priv->fsm, DEV_EVENT_TXDOWN, dev);
 }
}
