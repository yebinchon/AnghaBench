
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271_station {int hlid; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; scalar_t__ aid; } ;


 int DEBUG_MAC80211 ;
 int wl1271_allocate_sta (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_free_sta (struct wl1271*,struct wl12xx_vif*,int ) ;
 int wl12xx_cmd_add_peer (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*,int ) ;

__attribute__((used)) static int wl12xx_sta_add(struct wl1271 *wl,
     struct wl12xx_vif *wlvif,
     struct ieee80211_sta *sta)
{
 struct wl1271_station *wl_sta;
 int ret = 0;
 u8 hlid;

 wl1271_debug(DEBUG_MAC80211, "mac80211 add sta %d", (int)sta->aid);

 ret = wl1271_allocate_sta(wl, wlvif, sta);
 if (ret < 0)
  return ret;

 wl_sta = (struct wl1271_station *)sta->drv_priv;
 hlid = wl_sta->hlid;

 ret = wl12xx_cmd_add_peer(wl, wlvif, sta, hlid);
 if (ret < 0)
  wl1271_free_sta(wl, wlvif, hlid);

 return ret;
}
