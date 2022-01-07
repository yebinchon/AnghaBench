
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct wl12xx_vif {scalar_t__ bss_type; int total_freed_pkts; int links_map; } ;
struct wl1271 {int active_link_count; TYPE_3__* links; TYPE_2__* fw_status_2; int wl_lock; int links_map; int * session_ids; } ;
struct TYPE_6__ {int total_freed_pkts; struct wl12xx_vif* wlvif; int prev_freed_pkts; } ;
struct TYPE_4__ {int * tx_lnk_free_pkts; } ;
struct TYPE_5__ {TYPE_1__ counters; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 int EBUSY ;
 size_t WL12XX_MAX_LINKS ;
 int __set_bit (size_t,int ) ;
 size_t find_first_zero_bit (int ,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wlcore_get_new_session_id (struct wl1271*,size_t) ;

int wl12xx_allocate_link(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 *hlid)
{
 unsigned long flags;
 u8 link = find_first_zero_bit(wl->links_map, WL12XX_MAX_LINKS);
 if (link >= WL12XX_MAX_LINKS)
  return -EBUSY;

 wl->session_ids[link] = wlcore_get_new_session_id(wl, link);


 spin_lock_irqsave(&wl->wl_lock, flags);
 __set_bit(link, wl->links_map);
 __set_bit(link, wlvif->links_map);
 spin_unlock_irqrestore(&wl->wl_lock, flags);


 wl->links[link].prev_freed_pkts =
   wl->fw_status_2->counters.tx_lnk_free_pkts[link];
 wl->links[link].wlvif = wlvif;





 if (wlvif->bss_type != BSS_TYPE_AP_BSS)
  wl->links[link].total_freed_pkts = wlvif->total_freed_pkts;

 *hlid = link;

 wl->active_link_count++;
 return 0;
}
