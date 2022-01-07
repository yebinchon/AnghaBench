
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271 {scalar_t__ state; int mutex; int roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_scan_request {TYPE_1__* ssids; scalar_t__ n_ssids; } ;
struct TYPE_2__ {size_t ssid_len; int * ssid; } ;


 int DEBUG_MAC80211 ;
 int EAGAIN ;
 int EBUSY ;
 scalar_t__ WL12XX_MAX_ROLES ;
 scalar_t__ WLCORE_STATE_ON ;
 scalar_t__ find_first_bit (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wlcore_scan (struct wl1271*,struct ieee80211_vif*,int *,size_t,struct cfg80211_scan_request*) ;

__attribute__((used)) static int wl1271_op_hw_scan(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct cfg80211_scan_request *req)
{
 struct wl1271 *wl = hw->priv;
 int ret;
 u8 *ssid = ((void*)0);
 size_t len = 0;

 wl1271_debug(DEBUG_MAC80211, "mac80211 hw scan");

 if (req->n_ssids) {
  ssid = req->ssids[0].ssid;
  len = req->ssids[0].ssid_len;
 }

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {





  ret = -EAGAIN;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;


 if (find_first_bit(wl->roc_map, WL12XX_MAX_ROLES) < WL12XX_MAX_ROLES) {

  ret = -EBUSY;
  goto out_sleep;
 }

 ret = wlcore_scan(hw->priv, vif, ssid, len, req);
out_sleep:
 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
