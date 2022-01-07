
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int rx_streaming_disable_work; struct wl1271* wl; } ;
struct wl1271 {int hw; } ;


 int ieee80211_queue_work (int ,int *) ;

__attribute__((used)) static void wl1271_rx_streaming_timer(unsigned long data)
{
 struct wl12xx_vif *wlvif = (struct wl12xx_vif *)data;
 struct wl1271 *wl = wlvif->wl;
 ieee80211_queue_work(wl->hw, &wlvif->rx_streaming_disable_work);
}
