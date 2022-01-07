
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int wl_lock; } ;
typedef enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wlcore_stop_queue_locked (struct wl1271*,struct wl12xx_vif*,int ,int) ;

void wlcore_stop_queue(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 queue,
         enum wlcore_queue_stop_reason reason)
{
 unsigned long flags;

 spin_lock_irqsave(&wl->wl_lock, flags);
 wlcore_stop_queue_locked(wl, wlvif, queue, reason);
 spin_unlock_irqrestore(&wl->wl_lock, flags);
}
