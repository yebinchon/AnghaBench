
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {size_t bcast_hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; scalar_t__ total_freed_pkts; TYPE_1__ ap; int links_map; } ;
struct wl1271 {scalar_t__ active_link_count; TYPE_2__* links; int flags; int wl_lock; int links_map; } ;
struct TYPE_4__ {scalar_t__ total_freed_pkts; int * wlvif; int addr; scalar_t__ ba_bitmap; scalar_t__ prev_freed_pkts; scalar_t__ allocated_pkts; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int ETH_ALEN ;
 int WARN_ON_ONCE (int) ;
 int WL1271_FLAG_RECOVERY_IN_PROGRESS ;
 scalar_t__ WL1271_TX_SQN_POST_RECOVERY_PADDING ;
 size_t WL12XX_INVALID_LINK_ID ;
 int __clear_bit (size_t,int ) ;
 int memset (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_tx_reset_link_queues (struct wl1271*,size_t) ;

void wl12xx_free_link(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 *hlid)
{
 unsigned long flags;

 if (*hlid == WL12XX_INVALID_LINK_ID)
  return;


 spin_lock_irqsave(&wl->wl_lock, flags);
 __clear_bit(*hlid, wl->links_map);
 __clear_bit(*hlid, wlvif->links_map);
 spin_unlock_irqrestore(&wl->wl_lock, flags);

 wl->links[*hlid].allocated_pkts = 0;
 wl->links[*hlid].prev_freed_pkts = 0;
 wl->links[*hlid].ba_bitmap = 0;
 memset(wl->links[*hlid].addr, 0, ETH_ALEN);





 wl1271_tx_reset_link_queues(wl, *hlid);
 wl->links[*hlid].wlvif = ((void*)0);

 if (wlvif->bss_type == BSS_TYPE_STA_BSS ||
     (wlvif->bss_type == BSS_TYPE_AP_BSS &&
      *hlid == wlvif->ap.bcast_hlid)) {




  wlvif->total_freed_pkts = wl->links[*hlid].total_freed_pkts;





  if (test_bit(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags))
   wlvif->total_freed_pkts +=
     WL1271_TX_SQN_POST_RECOVERY_PADDING;
 }

 wl->links[*hlid].total_freed_pkts = 0;

 *hlid = WL12XX_INVALID_LINK_ID;
 wl->active_link_count--;
 WARN_ON_ONCE(wl->active_link_count < 0);
}
