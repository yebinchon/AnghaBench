
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int role_id; } ;
struct wl1271 {scalar_t__ state; int mutex; int roc_complete_work; struct ieee80211_vif* roc_vif; int roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_channel {int band; int center_freq; } ;
typedef enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;


 int DEBUG_MAC80211 ;
 int EBUSY ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ WL12XX_MAX_ROLES ;
 scalar_t__ WLCORE_STATE_ON ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int ieee80211_frequency_to_channel (int ) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*,int,int ) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl12xx_start_dev (struct wl1271*,struct wl12xx_vif*,int ,int) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wlcore_op_remain_on_channel(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_channel *chan,
           int duration,
           enum ieee80211_roc_type type)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 struct wl1271 *wl = hw->priv;
 int channel, ret = 0;

 channel = ieee80211_frequency_to_channel(chan->center_freq);

 wl1271_debug(DEBUG_MAC80211, "mac80211 roc %d (%d)",
       channel, wlvif->role_id);

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;


 if (WARN_ON(wl->roc_vif ||
      find_first_bit(wl->roc_map,
       WL12XX_MAX_ROLES) < WL12XX_MAX_ROLES)) {
  ret = -EBUSY;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl12xx_start_dev(wl, wlvif, chan->band, channel);
 if (ret < 0)
  goto out_sleep;

 wl->roc_vif = vif;
 ieee80211_queue_delayed_work(hw, &wl->roc_complete_work,
         msecs_to_jiffies(duration));
out_sleep:
 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);
 return ret;
}
