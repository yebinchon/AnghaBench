
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int mutex; int wl_lock; int tx_work; int hw; int flags; int dev; int irq; int * elp_compl; } ;
typedef int irqreturn_t ;


 int DEBUG_IRQ ;
 int IRQ_HANDLED ;
 int WL1271_FLAG_FW_TX_BUSY ;
 int WL1271_FLAG_IRQ_RUNNING ;
 int WL1271_FLAG_PENDING_WORK ;
 int WL1271_FLAG_SUSPENDED ;
 int WL1271_FLAG_TX_PENDING ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int disable_irq_nosync (int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_wakeup_event (int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_debug (int ,char*) ;
 scalar_t__ wl1271_tx_total_queue_count (struct wl1271*) ;
 int wl12xx_queue_recovery_work (struct wl1271*) ;
 int wlcore_irq_locked (struct wl1271*) ;

__attribute__((used)) static irqreturn_t wlcore_irq(int irq, void *cookie)
{
 int ret;
 unsigned long flags;
 struct wl1271 *wl = cookie;


 spin_lock_irqsave(&wl->wl_lock, flags);
 set_bit(WL1271_FLAG_IRQ_RUNNING, &wl->flags);
 if (wl->elp_compl) {
  complete(wl->elp_compl);
  wl->elp_compl = ((void*)0);
 }

 if (test_bit(WL1271_FLAG_SUSPENDED, &wl->flags)) {

  set_bit(WL1271_FLAG_PENDING_WORK, &wl->flags);
  wl1271_debug(DEBUG_IRQ, "should not enqueue work");
  disable_irq_nosync(wl->irq);



  spin_unlock_irqrestore(&wl->wl_lock, flags);
  return IRQ_HANDLED;
 }
 spin_unlock_irqrestore(&wl->wl_lock, flags);


 set_bit(WL1271_FLAG_TX_PENDING, &wl->flags);
 cancel_work_sync(&wl->tx_work);

 mutex_lock(&wl->mutex);

 ret = wlcore_irq_locked(wl);
 if (ret)
  wl12xx_queue_recovery_work(wl);

 spin_lock_irqsave(&wl->wl_lock, flags);

 clear_bit(WL1271_FLAG_TX_PENDING, &wl->flags);
 if (!test_bit(WL1271_FLAG_FW_TX_BUSY, &wl->flags) &&
     wl1271_tx_total_queue_count(wl) > 0)
  ieee80211_queue_work(wl->hw, &wl->tx_work);
 spin_unlock_irqrestore(&wl->wl_lock, flags);

 mutex_unlock(&wl->mutex);

 return IRQ_HANDLED;
}
