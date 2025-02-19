
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wl1251 {int channel; int psm_requested; scalar_t__ station_mode; scalar_t__ power_level; int mutex; int dtim_period; int beacon_int; int bss_type; int scanning; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {int flags; scalar_t__ power_level; int ps_dtim_period; TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct wl1251* priv; } ;
struct TYPE_3__ {int center_freq; } ;


 int DEBUG_MAC80211 ;
 int DEBUG_PSM ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_IDLE ;
 int IEEE80211_CONF_PS ;
 scalar_t__ STATION_ACTIVE_MODE ;
 scalar_t__ STATION_IDLE ;
 scalar_t__ STATION_POWER_SAVE_MODE ;
 int ieee80211_frequency_to_channel (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_acx_tx_power (struct wl1251*,scalar_t__) ;
 int wl1251_acx_wr_tbtt_and_dtim (struct wl1251*,int ,int ) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_join (struct wl1251*,int ,int,int ,int ) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;
 int wl1251_ps_set_mode (struct wl1251*,scalar_t__) ;

__attribute__((used)) static int wl1251_op_config(struct ieee80211_hw *hw, u32 changed)
{
 struct wl1251 *wl = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 int channel, ret = 0;

 channel = ieee80211_frequency_to_channel(
   conf->chandef.chan->center_freq);

 wl1251_debug(DEBUG_MAC80211, "mac80211 config ch %d psm %s power %d",
       channel,
       conf->flags & IEEE80211_CONF_PS ? "on" : "off",
       conf->power_level);

 mutex_lock(&wl->mutex);

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 if (channel != wl->channel) {
  wl->channel = channel;

  ret = wl1251_join(wl, wl->bss_type, wl->channel,
      wl->beacon_int, wl->dtim_period);
  if (ret < 0)
   goto out_sleep;
 }

 if (conf->flags & IEEE80211_CONF_PS && !wl->psm_requested) {
  wl1251_debug(DEBUG_PSM, "psm enabled");

  wl->psm_requested = 1;

  wl->dtim_period = conf->ps_dtim_period;

  ret = wl1251_acx_wr_tbtt_and_dtim(wl, wl->beacon_int,
        wl->dtim_period);




  ret = wl1251_ps_set_mode(wl, STATION_POWER_SAVE_MODE);
  if (ret < 0)
   goto out_sleep;
 } else if (!(conf->flags & IEEE80211_CONF_PS) &&
     wl->psm_requested) {
  wl1251_debug(DEBUG_PSM, "psm disabled");

  wl->psm_requested = 0;

  if (wl->station_mode != STATION_ACTIVE_MODE) {
   ret = wl1251_ps_set_mode(wl, STATION_ACTIVE_MODE);
   if (ret < 0)
    goto out_sleep;
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_IDLE && !wl->scanning) {
  if (conf->flags & IEEE80211_CONF_IDLE) {
   ret = wl1251_ps_set_mode(wl, STATION_IDLE);
   if (ret < 0)
    goto out_sleep;
  } else {
   ret = wl1251_ps_set_mode(wl, STATION_ACTIVE_MODE);
   if (ret < 0)
    goto out_sleep;
   ret = wl1251_join(wl, wl->bss_type, wl->channel,
       wl->beacon_int, wl->dtim_period);
   if (ret < 0)
    goto out_sleep;
  }
 }

 if (conf->power_level != wl->power_level) {
  ret = wl1251_acx_tx_power(wl, conf->power_level);
  if (ret < 0)
   goto out_sleep;

  wl->power_level = conf->power_level;
 }

out_sleep:
 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
