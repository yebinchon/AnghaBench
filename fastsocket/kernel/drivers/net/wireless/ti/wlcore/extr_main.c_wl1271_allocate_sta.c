
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sta_hlid_map; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_station {size_t hlid; int total_freed_pkts; } ;
struct wl1271 {scalar_t__ active_sta_count; TYPE_2__* links; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct TYPE_4__ {int addr; int total_freed_pkts; } ;


 scalar_t__ AP_MAX_STATIONS ;
 int EBUSY ;
 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int set_bit (size_t,int ) ;
 int wl1271_warning (char*) ;
 int wl12xx_allocate_link (struct wl1271*,struct wl12xx_vif*,size_t*) ;

__attribute__((used)) static int wl1271_allocate_sta(struct wl1271 *wl,
        struct wl12xx_vif *wlvif,
        struct ieee80211_sta *sta)
{
 struct wl1271_station *wl_sta;
 int ret;


 if (wl->active_sta_count >= AP_MAX_STATIONS) {
  wl1271_warning("could not allocate HLID - too much stations");
  return -EBUSY;
 }

 wl_sta = (struct wl1271_station *)sta->drv_priv;
 ret = wl12xx_allocate_link(wl, wlvif, &wl_sta->hlid);
 if (ret < 0) {
  wl1271_warning("could not allocate HLID - too many links");
  return -EBUSY;
 }


 wl->links[wl_sta->hlid].total_freed_pkts = wl_sta->total_freed_pkts;

 set_bit(wl_sta->hlid, wlvif->ap.sta_hlid_map);
 memcpy(wl->links[wl_sta->hlid].addr, sta->addr, ETH_ALEN);
 wl->active_sta_count++;
 return 0;
}
