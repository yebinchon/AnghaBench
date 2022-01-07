
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int status; int action_mutex; int rf_kill; scalar_t__ stop_rf_kill; } ;


 int HZ ;
 int IPW_DEBUG_RF_KILL (char*,...) ;
 int STATUS_RF_KILL_SW ;
 int cancel_delayed_work (int *) ;
 int ipw2100_down (struct ipw2100_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rf_kill_active (struct ipw2100_priv*) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_reset (struct ipw2100_priv*) ;

__attribute__((used)) static int ipw_radio_kill_sw(struct ipw2100_priv *priv, int disable_radio)
{
 if ((disable_radio ? 1 : 0) ==
     (priv->status & STATUS_RF_KILL_SW ? 1 : 0))
  return 0;

 IPW_DEBUG_RF_KILL("Manual SW RF Kill set to: RADIO  %s\n",
     disable_radio ? "OFF" : "ON");

 mutex_lock(&priv->action_mutex);

 if (disable_radio) {
  priv->status |= STATUS_RF_KILL_SW;
  ipw2100_down(priv);
 } else {
  priv->status &= ~STATUS_RF_KILL_SW;
  if (rf_kill_active(priv)) {
   IPW_DEBUG_RF_KILL("Can not turn radio back on - "
       "disabled by HW switch\n");

   priv->stop_rf_kill = 0;
   cancel_delayed_work(&priv->rf_kill);
   schedule_delayed_work(&priv->rf_kill,
           round_jiffies_relative(HZ));
  } else
   schedule_reset(priv);
 }

 mutex_unlock(&priv->action_mutex);
 return 1;
}
