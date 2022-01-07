
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int ap_ps_map; TYPE_1__* links; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int addr; int allocated_pkts; } ;


 int DEBUG_PSM ;
 int __set_bit (size_t,int *) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int ieee80211_sta_ps_transition_ni (struct ieee80211_sta*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (size_t,int *) ;
 int wl1271_debug (int ,char*,size_t,int ,int) ;
 int wl1271_error (char*,int ) ;
 int wl1271_ps_filter_frames (struct wl1271*,size_t) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

void wl12xx_ps_link_start(struct wl1271 *wl, struct wl12xx_vif *wlvif,
     u8 hlid, bool clean_queues)
{
 struct ieee80211_sta *sta;
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);

 if (test_bit(hlid, &wl->ap_ps_map))
  return;

 wl1271_debug(DEBUG_PSM, "start mac80211 PSM on hlid %d pkts %d "
       "clean_queues %d", hlid, wl->links[hlid].allocated_pkts,
       clean_queues);

 rcu_read_lock();
 sta = ieee80211_find_sta(vif, wl->links[hlid].addr);
 if (!sta) {
  wl1271_error("could not find sta %pM for starting ps",
        wl->links[hlid].addr);
  rcu_read_unlock();
  return;
 }

 ieee80211_sta_ps_transition_ni(sta, 1);
 rcu_read_unlock();


 if (clean_queues)
  wl1271_ps_filter_frames(wl, hlid);

 __set_bit(hlid, &wl->ap_ps_map);
}
