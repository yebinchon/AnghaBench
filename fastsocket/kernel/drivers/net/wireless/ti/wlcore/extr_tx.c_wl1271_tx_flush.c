
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ tx_frames_cnt; int flush_mutex; int mutex; int tx_work; } ;


 int DEBUG_MAC80211 ;
 int WL1271_TX_FLUSH_TIMEOUT ;
 int WL12XX_MAX_LINKS ;
 int WLCORE_QUEUE_STOP_REASON_FLUSH ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int time_after (unsigned long,unsigned long) ;
 unsigned long usecs_to_jiffies (int) ;
 int wl1271_debug (int ,char*,scalar_t__,...) ;
 int wl1271_tx_reset_link_queues (struct wl1271*,int) ;
 scalar_t__ wl1271_tx_total_queue_count (struct wl1271*) ;
 int wl1271_tx_work (int *) ;
 int wl1271_warning (char*,int) ;
 int wlcore_stop_queues (struct wl1271*,int ) ;
 int wlcore_wake_queues (struct wl1271*,int ) ;

void wl1271_tx_flush(struct wl1271 *wl)
{
 unsigned long timeout, start_time;
 int i;
 start_time = jiffies;
 timeout = start_time + usecs_to_jiffies(WL1271_TX_FLUSH_TIMEOUT);


 mutex_lock(&wl->flush_mutex);

 mutex_lock(&wl->mutex);
 if (wl->tx_frames_cnt == 0 && wl1271_tx_total_queue_count(wl) == 0) {
  mutex_unlock(&wl->mutex);
  goto out;
 }

 wlcore_stop_queues(wl, WLCORE_QUEUE_STOP_REASON_FLUSH);

 while (!time_after(jiffies, timeout)) {
  wl1271_debug(DEBUG_MAC80211, "flushing tx buffer: %d %d",
        wl->tx_frames_cnt,
        wl1271_tx_total_queue_count(wl));


  mutex_unlock(&wl->mutex);
  if (wl1271_tx_total_queue_count(wl))
   wl1271_tx_work(&wl->tx_work);
  msleep(20);
  mutex_lock(&wl->mutex);

  if ((wl->tx_frames_cnt == 0) &&
      (wl1271_tx_total_queue_count(wl) == 0)) {
   wl1271_debug(DEBUG_MAC80211, "tx flush took %d ms",
         jiffies_to_msecs(jiffies - start_time));
   goto out_wake;
  }
 }

 wl1271_warning("Unable to flush all TX buffers, "
         "timed out (timeout %d ms",
         WL1271_TX_FLUSH_TIMEOUT / 1000);


 for (i = 0; i < WL12XX_MAX_LINKS; i++)
  wl1271_tx_reset_link_queues(wl, i);

out_wake:
 wlcore_wake_queues(wl, WLCORE_QUEUE_STOP_REASON_FLUSH);
 mutex_unlock(&wl->mutex);
out:
 mutex_unlock(&wl->flush_mutex);
}
