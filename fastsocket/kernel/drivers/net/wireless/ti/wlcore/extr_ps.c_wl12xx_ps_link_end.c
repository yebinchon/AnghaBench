
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {TYPE_1__* links; int ap_ps_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int DEBUG_PSM ;
 int __clear_bit (size_t,int *) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int ieee80211_sta_ps_transition_ni (struct ieee80211_sta*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (size_t,int *) ;
 int wl1271_debug (int ,char*,size_t) ;
 int wl1271_error (char*,int ) ;
 struct ieee80211_vif* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

void wl12xx_ps_link_end(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 hlid)
{
 struct ieee80211_sta *sta;
 struct ieee80211_vif *vif = wl12xx_wlvif_to_vif(wlvif);

 if (!test_bit(hlid, &wl->ap_ps_map))
  return;

 wl1271_debug(DEBUG_PSM, "end mac80211 PSM on hlid %d", hlid);

 __clear_bit(hlid, &wl->ap_ps_map);

 rcu_read_lock();
 sta = ieee80211_find_sta(vif, wl->links[hlid].addr);
 if (!sta) {
  wl1271_error("could not find sta %pM for ending ps",
        wl->links[hlid].addr);
  goto end;
 }

 ieee80211_sta_ps_transition_ni(sta, 0);
end:
 rcu_read_unlock();
}
