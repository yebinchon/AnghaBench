
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fw_stats_update; int fw_stats; } ;
struct wl1251 {scalar_t__ state; int mutex; TYPE_1__ stats; } ;


 int WL1251_DEBUGFS_STATS_LIFETIME ;
 scalar_t__ WL1251_STATE_ON ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int wl1251_acx_statistics (struct wl1251*,int ) ;
 int wl1251_ps_elp_sleep (struct wl1251*) ;
 int wl1251_ps_elp_wakeup (struct wl1251*) ;

__attribute__((used)) static void wl1251_debugfs_update_stats(struct wl1251 *wl)
{
 int ret;

 mutex_lock(&wl->mutex);

 ret = wl1251_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 if (wl->state == WL1251_STATE_ON &&
     time_after(jiffies, wl->stats.fw_stats_update +
         msecs_to_jiffies(WL1251_DEBUGFS_STATS_LIFETIME))) {
  wl1251_acx_statistics(wl, wl->stats.fw_stats);
  wl->stats.fw_stats_update = jiffies;
 }

 wl1251_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);
}
