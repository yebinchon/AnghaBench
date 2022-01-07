
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl1251 {int scanning; TYPE_2__* hw; } ;
struct event_mailbox {int scheduled_scan_channels; int scheduled_scan_status; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 int DEBUG_EVENT ;
 int DEBUG_MAC80211 ;
 int IEEE80211_CONF_IDLE ;
 int STATION_IDLE ;
 int ieee80211_scan_completed (TYPE_2__*,int) ;
 int wl1251_debug (int ,char*,...) ;
 int wl1251_ps_set_mode (struct wl1251*,int ) ;

__attribute__((used)) static int wl1251_event_scan_complete(struct wl1251 *wl,
          struct event_mailbox *mbox)
{
 int ret = 0;

 wl1251_debug(DEBUG_EVENT, "status: 0x%x, channels: %d",
       mbox->scheduled_scan_status,
       mbox->scheduled_scan_channels);

 if (wl->scanning) {
  ieee80211_scan_completed(wl->hw, 0);
  wl1251_debug(DEBUG_MAC80211, "mac80211 hw scan completed");
  wl->scanning = 0;
  if (wl->hw->conf.flags & IEEE80211_CONF_IDLE)
   ret = wl1251_ps_set_mode(wl, STATION_IDLE);
 }

 return ret;
}
