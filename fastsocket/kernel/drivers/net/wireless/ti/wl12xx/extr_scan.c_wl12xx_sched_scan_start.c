
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_sched_scan_ies {int dummy; } ;
struct cfg80211_sched_scan_request {int dummy; } ;


 int wl1271_scan_sched_scan_config (struct wl1271*,struct wl12xx_vif*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;
 int wl1271_scan_sched_scan_start (struct wl1271*,struct wl12xx_vif*) ;

int wl12xx_sched_scan_start(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       struct cfg80211_sched_scan_request *req,
       struct ieee80211_sched_scan_ies *ies)
{
 int ret;

 ret = wl1271_scan_sched_scan_config(wl, wlvif, req, ies);
 if (ret < 0)
  return ret;

 return wl1271_scan_sched_scan_start(wl, wlvif);
}
