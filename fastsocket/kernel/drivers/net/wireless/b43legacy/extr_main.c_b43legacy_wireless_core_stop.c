
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_1__* dev; int periodic_work; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int * tx_queue; int mutex; int tx_work; int irq_lock; } ;
struct TYPE_2__ {int irq; } ;


 int B43legacy_MMIO_GEN_IRQ_MASK ;
 int B43legacy_QOS_QUEUE_NUM ;
 int B43legacy_STAT_INITIALIZED ;
 scalar_t__ B43legacy_STAT_STARTED ;
 int b43legacy_mac_suspend (struct b43legacy_wldev*) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_set_status (struct b43legacy_wldev*,int ) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_synchronize_irq (struct b43legacy_wldev*) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacydbg (struct b43legacy_wl*,char*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dev_kfree_skb (int ) ;
 int free_irq (int ,struct b43legacy_wldev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void b43legacy_wireless_core_stop(struct b43legacy_wldev *dev)
{
 struct b43legacy_wl *wl = dev->wl;
 unsigned long flags;
 int queue_num;

 if (b43legacy_status(dev) < B43legacy_STAT_STARTED)
  return;




 spin_lock_irqsave(&wl->irq_lock, flags);
 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
 b43legacy_read32(dev, B43legacy_MMIO_GEN_IRQ_MASK);
 spin_unlock_irqrestore(&wl->irq_lock, flags);
 b43legacy_synchronize_irq(dev);

 b43legacy_set_status(dev, B43legacy_STAT_INITIALIZED);

 mutex_unlock(&wl->mutex);


 cancel_delayed_work_sync(&dev->periodic_work);
 cancel_work_sync(&wl->tx_work);
 mutex_lock(&wl->mutex);


 for (queue_num = 0; queue_num < B43legacy_QOS_QUEUE_NUM; queue_num++) {
  while (skb_queue_len(&wl->tx_queue[queue_num]))
   dev_kfree_skb(skb_dequeue(&wl->tx_queue[queue_num]));
 }

b43legacy_mac_suspend(dev);
 free_irq(dev->dev->irq, dev);
 b43legacydbg(wl, "Wireless interface stopped\n");
}
