
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; int mutex; } ;


 int DEBUG_MAC80211 ;
 int EBUSY ;
 scalar_t__ WLCORE_STATE_ON ;
 int __wlcore_roc_completed (struct wl1271*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;

__attribute__((used)) static int wlcore_roc_completed(struct wl1271 *wl)
{
 int ret;

 wl1271_debug(DEBUG_MAC80211, "roc complete");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EBUSY;
  goto out;
 }

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = __wlcore_roc_completed(wl);

 wl1271_ps_elp_sleep(wl);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
