
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
typedef int s8 ;


 int DEBUG_MAC80211 ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_acx_average_rssi (struct wl1271*,struct wl12xx_vif*,int *) ;

__attribute__((used)) static int wlcore_op_get_rssi(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta,
          s8 *rssi_dbm)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret = 0;

 wl1271_debug(DEBUG_MAC80211, "mac80211 get_rssi");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out_sleep;

 ret = wlcore_acx_average_rssi(wl, wlvif, rssi_dbm);
 if (ret < 0)
  goto out_sleep;

out_sleep:
 wl1271_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);

 return ret;
}
