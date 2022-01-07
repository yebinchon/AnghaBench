
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {size_t band; int basic_rate_set; int rate_set; int * bitrate_masks; } ;
struct wl1271 {int dummy; } ;



__attribute__((used)) static void wl1271_set_band_rate(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 wlvif->basic_rate_set = wlvif->bitrate_masks[wlvif->band];
 wlvif->rate_set = wlvif->basic_rate_set;
}
