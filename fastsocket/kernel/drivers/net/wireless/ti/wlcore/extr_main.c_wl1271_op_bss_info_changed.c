
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {scalar_t__ bss_type; int flags; int connection_loss_work; int role_id; } ;
struct wl1271 {scalar_t__ state; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_bss_conf {int enable_beacon; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON_ENABLED ;
 scalar_t__ BSS_TYPE_AP_BSS ;
 int DEBUG_MAC80211 ;
 scalar_t__ WLCORE_STATE_ON ;
 int WLVIF_FLAG_INITIALIZED ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_bss_info_changed_ap (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int wl1271_bss_info_changed_sta (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int wl1271_debug (int ,char*,int ,int) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl1271_tx_flush (struct wl1271*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wl1271_op_bss_info_changed(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif,
           struct ieee80211_bss_conf *bss_conf,
           u32 changed)
{
 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 bss info role %d changed 0x%x",
       wlvif->role_id, (int)changed);





 if (!is_ap && (changed & BSS_CHANGED_ASSOC))
  cancel_delayed_work_sync(&wlvif->connection_loss_work);

 if (is_ap && (changed & BSS_CHANGED_BEACON_ENABLED) &&
     !bss_conf->enable_beacon)
  wl1271_tx_flush(wl);

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 if (unlikely(!test_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags)))
  goto out;

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 if (is_ap)
  wl1271_bss_info_changed_ap(wl, vif, bss_conf, changed);
 else
  wl1271_bss_info_changed_sta(wl, vif, bss_conf, changed);

 wl1271_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);
}
