
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int mutex; struct wl12xx_vif* sched_vif; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sched_scan_ies {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_sched_scan_request {int dummy; } ;
struct TYPE_2__ {int (* sched_scan_start ) (struct wl1271*,struct wl12xx_vif*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;} ;


 int DEBUG_MAC80211 ;
 int EAGAIN ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wl1271*,struct wl12xx_vif*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wl1271_op_sched_scan_start(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct cfg80211_sched_scan_request *req,
          struct ieee80211_sched_scan_ies *ies)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "wl1271_op_sched_scan_start");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EAGAIN;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl->ops->sched_scan_start(wl, wlvif, req, ies);
 if (ret < 0)
  goto out_sleep;

 wl->sched_vif = wlvif;

out_sleep:
 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);
 return ret;
}
