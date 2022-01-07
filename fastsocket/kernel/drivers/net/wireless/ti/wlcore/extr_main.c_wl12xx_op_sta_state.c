
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int aid; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;


 int DEBUG_MAC80211 ;
 int EBUSY ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*,int ,int,int) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl12xx_update_sta_state (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*,int,int) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wl12xx_op_sta_state(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta,
          enum ieee80211_sta_state old_state,
          enum ieee80211_sta_state new_state)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 sta %d state=%d->%d",
       sta->aid, old_state, new_state);

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EBUSY;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl12xx_update_sta_state(wl, wlvif, sta, old_state, new_state);

 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);
 if (new_state < old_state)
  return 0;
 return ret;
}
