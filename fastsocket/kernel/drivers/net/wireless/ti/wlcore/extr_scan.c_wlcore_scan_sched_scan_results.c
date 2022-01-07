
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int hw; } ;


 int DEBUG_SCAN ;
 int ieee80211_sched_scan_results (int ) ;
 int wl1271_debug (int ,char*) ;

void wlcore_scan_sched_scan_results(struct wl1271 *wl)
{
 wl1271_debug(DEBUG_SCAN, "got periodic scan results");

 ieee80211_sched_scan_results(wl->hw);
}
