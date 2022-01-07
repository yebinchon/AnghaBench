
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int plt; int mutex; scalar_t__ rx_counter; int plt_mode; int state; int sleep_auth; scalar_t__ flags; int tx_watchdog_work; int elp_work; int recovery_work; int netstack_work; } ;


 int EBUSY ;
 int PLT_OFF ;
 int WL1271_PSM_ILLEGAL ;
 int WLCORE_STATE_OFF ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1271_error (char*,int ) ;
 int wl1271_flush_deferred_work (struct wl1271*) ;
 int wl1271_notice (char*) ;
 int wl1271_power_off (struct wl1271*) ;
 int wlcore_disable_interrupts (struct wl1271*) ;
 int wlcore_enable_interrupts (struct wl1271*) ;

int wl1271_plt_stop(struct wl1271 *wl)
{
 int ret = 0;

 wl1271_notice("power down");






 wlcore_disable_interrupts(wl);
 mutex_lock(&wl->mutex);
 if (!wl->plt) {
  mutex_unlock(&wl->mutex);






  wlcore_enable_interrupts(wl);

  wl1271_error("cannot power down because not in PLT "
        "state: %d", wl->state);
  ret = -EBUSY;
  goto out;
 }

 mutex_unlock(&wl->mutex);

 wl1271_flush_deferred_work(wl);
 cancel_work_sync(&wl->netstack_work);
 cancel_work_sync(&wl->recovery_work);
 cancel_delayed_work_sync(&wl->elp_work);
 cancel_delayed_work_sync(&wl->tx_watchdog_work);

 mutex_lock(&wl->mutex);
 wl1271_power_off(wl);
 wl->flags = 0;
 wl->sleep_auth = WL1271_PSM_ILLEGAL;
 wl->state = WLCORE_STATE_OFF;
 wl->plt = 0;
 wl->plt_mode = PLT_OFF;
 wl->rx_counter = 0;
 mutex_unlock(&wl->mutex);

out:
 return ret;
}
