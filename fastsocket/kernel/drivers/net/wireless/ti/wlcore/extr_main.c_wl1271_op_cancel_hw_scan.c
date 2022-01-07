
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; int * req; int scanned_ch; } ;
struct wl1271 {scalar_t__ state; int scan_complete_work; int mutex; int hw; TYPE_2__ scan; int * scan_wlvif; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_3__ {int (* scan_stop ) (struct wl1271*,struct wl12xx_vif*) ;} ;


 int DEBUG_MAC80211 ;
 scalar_t__ WL1271_SCAN_STATE_DONE ;
 scalar_t__ WL1271_SCAN_STATE_IDLE ;
 scalar_t__ WLCORE_STATE_ON ;
 int cancel_delayed_work_sync (int *) ;
 int ieee80211_scan_completed (int ,int) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wl1271*,struct wl12xx_vif*) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl12xx_rearm_tx_watchdog_locked (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wl1271_op_cancel_hw_scan(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 cancel hw scan");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 if (wl->scan.state == WL1271_SCAN_STATE_IDLE)
  goto out;

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 if (wl->scan.state != WL1271_SCAN_STATE_DONE) {
  ret = wl->ops->scan_stop(wl, wlvif);
  if (ret < 0)
   goto out_sleep;
 }





 wl12xx_rearm_tx_watchdog_locked(wl);

 wl->scan.state = WL1271_SCAN_STATE_IDLE;
 memset(wl->scan.scanned_ch, 0, sizeof(wl->scan.scanned_ch));
 wl->scan_wlvif = ((void*)0);
 wl->scan.req = ((void*)0);
 ieee80211_scan_completed(wl->hw, 1);

out_sleep:
 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);

 cancel_delayed_work_sync(&wl->scan_complete_work);
}
