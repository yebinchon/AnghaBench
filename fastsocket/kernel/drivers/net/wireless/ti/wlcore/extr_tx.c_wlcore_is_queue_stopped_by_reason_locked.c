
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int * queue_stop_reasons; int wl_lock; } ;
typedef enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;


 int assert_spin_locked (int *) ;
 int test_bit (int,int *) ;
 int wlcore_tx_get_mac80211_queue (struct wl12xx_vif*,int ) ;

bool wlcore_is_queue_stopped_by_reason_locked(struct wl1271 *wl,
           struct wl12xx_vif *wlvif, u8 queue,
           enum wlcore_queue_stop_reason reason)
{
 int hwq = wlcore_tx_get_mac80211_queue(wlvif, queue);

 assert_spin_locked(&wl->wl_lock);
 return test_bit(reason, &wl->queue_stop_reasons[hwq]);
}
