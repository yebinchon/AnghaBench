
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int * sta_hlid_map; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_station {int total_freed_pkts; } ;
struct wl1271 {unsigned long ap_ps_map; scalar_t__ active_sta_count; int flags; TYPE_2__* links; int ap_fw_ps_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int total_freed_pkts; int addr; } ;


 size_t WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 scalar_t__ WL1271_TX_SQN_POST_RECOVERY_PADDING ;
 int __clear_bit (size_t,unsigned long*) ;
 int clear_bit (size_t,int *) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (size_t,int *) ;
 int wl12xx_free_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;
 int wl12xx_rearm_tx_watchdog_locked (struct wl1271*) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

void wl1271_free_sta(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 hlid)
{
 struct wl1271_station *wl_sta;
 struct ieee80211_sta *sta;
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);

 if (!test_bit(hlid, wlvif->ap.sta_hlid_map))
  return;

 clear_bit(hlid, wlvif->ap.sta_hlid_map);
 __clear_bit(hlid, &wl->ap_ps_map);
 __clear_bit(hlid, (unsigned long *)&wl->ap_fw_ps_map);





 rcu_read_lock();
 sta = ieee80211_find_sta(vif, wl->links[hlid].addr);
 if (sta) {
  wl_sta = (void *)sta->drv_priv;
  wl_sta->total_freed_pkts = wl->links[hlid].total_freed_pkts;





  if (test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags))
   wl_sta->total_freed_pkts +=
     WL1271_TX_SQN_POST_RECOVERY_PADDING;
 }
 rcu_read_unlock();

 wl12xx_free_link(wl, wlvif, &hlid);
 wl->active_sta_count--;





 if (wl->active_sta_count == 0)
  wl12xx_rearm_tx_watchdog_locked(wl);
}
