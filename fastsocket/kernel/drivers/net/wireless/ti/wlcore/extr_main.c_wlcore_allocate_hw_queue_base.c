
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlcore_hw_queue_iter_data {int hw_queue_map; scalar_t__ cur_running; struct ieee80211_vif* vif; } ;
struct wl12xx_vif {int hw_queue_base; scalar_t__ bss_type; } ;
struct wl1271 {scalar_t__* queue_stop_reasons; int hw; } ;
struct ieee80211_vif {int* hw_queue; int cab_queue; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 int DEBUG_MAC80211 ;
 int EBUSY ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int IEEE80211_INVAL_HW_QUEUE ;
 int NUM_TX_QUEUES ;
 int WLCORE_NUM_MAC_ADDRESSES ;
 int find_first_zero_bit (int ,int) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct wlcore_hw_queue_iter_data*) ;
 int wl1271_debug (int ,char*,int) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;
 int wlcore_hw_queue_iter ;

__attribute__((used)) static int wlcore_allocate_hw_queue_base(struct wl1271 *wl,
      struct wl12xx_vif *wlvif)
{
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);
 struct wlcore_hw_queue_iter_data iter_data = {};
 int i, q_base;

 iter_data.vif = vif;


 ieee80211_iterate_active_interfaces_atomic(wl->hw,
     IEEE80211_IFACE_ITER_RESUME_ALL,
     wlcore_hw_queue_iter, &iter_data);


 if (iter_data.cur_running) {
  wlvif->hw_queue_base = vif->hw_queue[0];
  wl1271_debug(DEBUG_MAC80211,
        "using pre-allocated hw queue base %d",
        wlvif->hw_queue_base);


  goto adjust_cab_queue;
 }

 q_base = find_first_zero_bit(iter_data.hw_queue_map,
         WLCORE_NUM_MAC_ADDRESSES);
 if (q_base >= WLCORE_NUM_MAC_ADDRESSES)
  return -EBUSY;

 wlvif->hw_queue_base = q_base * NUM_TX_QUEUES;
 wl1271_debug(DEBUG_MAC80211, "allocating hw queue base: %d",
       wlvif->hw_queue_base);

 for (i = 0; i < NUM_TX_QUEUES; i++) {
  wl->queue_stop_reasons[wlvif->hw_queue_base + i] = 0;

  vif->hw_queue[i] = wlvif->hw_queue_base + i;
 }

adjust_cab_queue:

 if (wlvif->bss_type == BSS_TYPE_AP_BSS)
  vif->cab_queue = NUM_TX_QUEUES * WLCORE_NUM_MAC_ADDRESSES +
     wlvif->hw_queue_base / NUM_TX_QUEUES;
 else
  vif->cab_queue = IEEE80211_INVAL_HW_QUEUE;

 return 0;
}
