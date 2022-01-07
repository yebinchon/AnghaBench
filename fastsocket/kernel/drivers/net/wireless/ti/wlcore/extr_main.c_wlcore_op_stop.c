
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int mutex; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int DEBUG_MAC80211 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1271_debug (int ,char*) ;
 int wlcore_op_stop_locked (struct wl1271*) ;

__attribute__((used)) static void wlcore_op_stop(struct ieee80211_hw *hw)
{
 struct wl1271 *wl = hw->priv;

 wl1271_debug(DEBUG_MAC80211, "mac80211 stop");

 mutex_lock(&wl->mutex);

 wlcore_op_stop_locked(wl);

 mutex_unlock(&wl->mutex);
}
