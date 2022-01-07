
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;


 int DEBUG_EVENT ;
 int wl1271_debug (int ,char*) ;
 int wl1271_tx_dummy_packet (struct wl1271*) ;

void wlcore_event_dummy_packet(struct wl1271 *wl)
{
 wl1271_debug(DEBUG_EVENT, "DUMMY_PACKET_ID_EVENT_ID");
 wl1271_tx_dummy_packet(wl);
}
