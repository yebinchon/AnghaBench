
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {int sta_hlid_map; int * ucast_rate_idx; int bcast_rate_idx; int mgmt_rate_idx; void* global_hlid; void* bcast_hlid; } ;
struct TYPE_7__ {int klv_template_id; int p2p_rate_idx; int ap_rate_idx; int basic_rate_idx; void* hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; int connection_loss_work; int rx_streaming_disable_work; int rx_streaming_enable_work; int rx_streaming_timer; void* dev_role_id; void* role_id; TYPE_3__ ap; int list; int * probereq; TYPE_2__ sta; void* dev_hlid; int flags; } ;
struct TYPE_9__ {scalar_t__ sta_sleep_auth; } ;
struct TYPE_10__ {TYPE_4__ conn; } ;
struct TYPE_6__ {scalar_t__ state; int * req; int scanned_ch; } ;
struct wl1271 {scalar_t__ state; scalar_t__ ap_count; int mutex; TYPE_5__ conf; scalar_t__ sta_count; int flags; struct wl12xx_vif* last_wlvif; int hw; struct ieee80211_vif* roc_vif; struct wl12xx_vif* sched_vif; TYPE_1__ scan; struct wl12xx_vif* scan_wlvif; } ;
struct ieee80211_vif {int dummy; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_IBSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int CONF_TX_MAX_AC_COUNT ;
 int DEBUG_MAC80211 ;
 int WL1271_FLAG_INTENDED_FW_RECOVERY ;
 int WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 scalar_t__ WL1271_PSM_ELP ;
 scalar_t__ WL1271_PSM_ILLEGAL ;
 scalar_t__ WL1271_SCAN_STATE_IDLE ;
 void* WL12XX_INVALID_LINK_ID ;
 void* WL12XX_INVALID_ROLE_ID ;
 scalar_t__ WLCORE_STATE_OFF ;
 int WLVIF_FLAG_INITIALIZED ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb (int *) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int ieee80211_scan_completed (int ,int) ;
 int ieee80211_sched_scan_stopped (int ) ;
 int list_del (int *) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_acx_sleep_auth (struct wl1271*,scalar_t__) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_free_ap_keys (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_info (char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl12xx_cmd_role_disable (struct wl1271*,void**) ;
 scalar_t__ wl12xx_dev_role_started (struct wl12xx_vif*) ;
 int wl12xx_free_rate_policy (struct wl1271*,int *) ;
 int wl12xx_rearm_tx_watchdog_locked (struct wl1271*) ;
 int wl12xx_stop_dev (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_tx_reset_wlvif (struct wl1271*,struct wl12xx_vif*) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_free_klv_template (struct wl1271*,int *) ;

__attribute__((used)) static void __wl1271_op_remove_interface(struct wl1271 *wl,
      struct ieee80211_vif *vif,
      bool reset_tx_queues)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int i, ret;
 bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);

 wl1271_debug(DEBUG_MAC80211, "mac80211 remove interface");

 if (!test_and_clear_bit(WLVIF_FLAG_INITIALIZED, &wlvif->flags))
  return;


 if (wl->state == WLCORE_STATE_OFF)
  return;

 wl1271_info("down");

 if (wl->scan.state != WL1271_SCAN_STATE_IDLE &&
     wl->scan_wlvif == wlvif) {




  wl12xx_rearm_tx_watchdog_locked(wl);

  wl->scan.state = WL1271_SCAN_STATE_IDLE;
  memset(wl->scan.scanned_ch, 0, sizeof(wl->scan.scanned_ch));
  wl->scan_wlvif = ((void*)0);
  wl->scan.req = ((void*)0);
  ieee80211_scan_completed(wl->hw, 1);
 }

 if (wl->sched_vif == wlvif) {
  ieee80211_sched_scan_stopped(wl->hw);
  wl->sched_vif = ((void*)0);
 }

 if (wl->roc_vif == vif) {
  wl->roc_vif = ((void*)0);
  ieee80211_remain_on_channel_expired(wl->hw);
 }

 if (!test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags)) {

  ret = wl1271_ps_elp_wakeup(wl);
  if (ret < 0)
   goto deinit;

  if (wlvif->bss_type == BSS_TYPE_STA_BSS ||
      wlvif->bss_type == BSS_TYPE_IBSS) {
   if (wl12xx_dev_role_started(wlvif))
    wl12xx_stop_dev(wl, wlvif);
  }

  ret = wl12xx_cmd_role_disable(wl, &wlvif->role_id);
  if (ret < 0)
   goto deinit;

  wl1271_ps_elp_sleep(wl);
 }
deinit:
 wl12xx_tx_reset_wlvif(wl, wlvif);


 wlvif->dev_hlid = WL12XX_INVALID_LINK_ID;

 if (wlvif->bss_type == BSS_TYPE_STA_BSS ||
     wlvif->bss_type == BSS_TYPE_IBSS) {
  wlvif->sta.hlid = WL12XX_INVALID_LINK_ID;
  wl12xx_free_rate_policy(wl, &wlvif->sta.basic_rate_idx);
  wl12xx_free_rate_policy(wl, &wlvif->sta.ap_rate_idx);
  wl12xx_free_rate_policy(wl, &wlvif->sta.p2p_rate_idx);
  wlcore_free_klv_template(wl, &wlvif->sta.klv_template_id);
 } else {
  wlvif->ap.bcast_hlid = WL12XX_INVALID_LINK_ID;
  wlvif->ap.global_hlid = WL12XX_INVALID_LINK_ID;
  wl12xx_free_rate_policy(wl, &wlvif->ap.mgmt_rate_idx);
  wl12xx_free_rate_policy(wl, &wlvif->ap.bcast_rate_idx);
  for (i = 0; i < CONF_TX_MAX_AC_COUNT; i++)
   wl12xx_free_rate_policy(wl,
      &wlvif->ap.ucast_rate_idx[i]);
  wl1271_free_ap_keys(wl, wlvif);
 }

 dev_kfree_skb(wlvif->probereq);
 wlvif->probereq = ((void*)0);
 if (wl->last_wlvif == wlvif)
  wl->last_wlvif = ((void*)0);
 list_del(&wlvif->list);
 memset(wlvif->ap.sta_hlid_map, 0, sizeof(wlvif->ap.sta_hlid_map));
 wlvif->role_id = WL12XX_INVALID_ROLE_ID;
 wlvif->dev_role_id = WL12XX_INVALID_ROLE_ID;

 if (is_ap)
  wl->ap_count--;
 else
  wl->sta_count--;





 if (test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags) &&
     !test_bit(WL1271_FLAG_INTENDED_FW_RECOVERY, &wl->flags))
  goto unlock;

 if (wl->ap_count == 0 && is_ap && wl->sta_count) {
  u8 sta_auth = wl->conf.conn.sta_sleep_auth;

  if (sta_auth != WL1271_PSM_ILLEGAL)
   wl1271_acx_sleep_auth(wl, sta_auth);

  else
   wl1271_acx_sleep_auth(wl, WL1271_PSM_ELP);
 }

unlock:
 mutex_unlock(&wl->mutex);

 del_timer_sync(&wlvif->rx_streaming_timer);
 cancel_work_sync(&wlvif->rx_streaming_enable_work);
 cancel_work_sync(&wlvif->rx_streaming_disable_work);
 cancel_delayed_work_sync(&wlvif->connection_loss_work);

 mutex_lock(&wl->mutex);
}
