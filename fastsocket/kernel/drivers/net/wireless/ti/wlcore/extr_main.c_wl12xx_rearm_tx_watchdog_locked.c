
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_watchdog_timeout; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {scalar_t__ tx_allocated_blocks; TYPE_2__ conf; int tx_watchdog_work; int hw; } ;


 int cancel_delayed_work (int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;

void wl12xx_rearm_tx_watchdog_locked(struct wl1271 *wl)
{

 if (wl->tx_allocated_blocks == 0)
  return;

 cancel_delayed_work(&wl->tx_watchdog_work);
 ieee80211_queue_delayed_work(wl->hw, &wl->tx_watchdog_work,
  msecs_to_jiffies(wl->conf.tx.tx_watchdog_timeout));
}
