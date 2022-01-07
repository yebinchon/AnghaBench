
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1271 {int * sched_vif; int hw; } ;


 int DEBUG_EVENT ;
 int ieee80211_sched_scan_stopped (int ) ;
 int wl1271_debug (int ,char*,int ) ;

void wlcore_event_sched_scan_completed(struct wl1271 *wl,
           u8 status)
{
 wl1271_debug(DEBUG_EVENT, "PERIODIC_SCAN_COMPLETE_EVENT (status 0x%0x)",
       status);

 if (wl->sched_vif) {
  ieee80211_sched_scan_stopped(wl->hw);
  wl->sched_vif = ((void*)0);
 }
}
