
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct b43_wldev {TYPE_1__* dev; int periodic_work; struct b43_wl* wl; } ;
struct b43_wl {int hw; int * tx_queue; struct b43_wldev* current_dev; int mutex; int hardirq_lock; int tx_work; } ;
struct TYPE_2__ {int irq; } ;


 int B43_MMIO_GEN_IRQ_MASK ;
 int B43_QOS_QUEUE_NUM ;
 int B43_STAT_INITIALIZED ;
 scalar_t__ B43_STAT_STARTED ;
 int B43_WARN_ON (int) ;
 scalar_t__ b43_bus_host_is_sdio (TYPE_1__*) ;
 int b43_leds_exit (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_sdio_free_irq (struct b43_wldev*) ;
 int b43_set_status (struct b43_wldev*,int ) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43_write32 (struct b43_wldev*,int ,int ) ;
 int b43dbg (struct b43_wl*,char*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int free_irq (int ,struct b43_wldev*) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static struct b43_wldev * b43_wireless_core_stop(struct b43_wldev *dev)
{
 struct b43_wl *wl;
 struct b43_wldev *orig_dev;
 u32 mask;
 int queue_num;

 if (!dev)
  return ((void*)0);
 wl = dev->wl;
redo:
 if (!dev || b43_status(dev) < B43_STAT_STARTED)
  return dev;


 mutex_unlock(&wl->mutex);
 cancel_delayed_work_sync(&dev->periodic_work);
 cancel_work_sync(&wl->tx_work);
 mutex_lock(&wl->mutex);
 dev = wl->current_dev;
 if (!dev || b43_status(dev) < B43_STAT_STARTED) {

  return dev;
 }


 b43_set_status(dev, B43_STAT_INITIALIZED);
 if (b43_bus_host_is_sdio(dev->dev)) {

  b43_write32(dev, B43_MMIO_GEN_IRQ_MASK, 0);
  b43_read32(dev, B43_MMIO_GEN_IRQ_MASK);
 } else {
  spin_lock_irq(&wl->hardirq_lock);
  b43_write32(dev, B43_MMIO_GEN_IRQ_MASK, 0);
  b43_read32(dev, B43_MMIO_GEN_IRQ_MASK);
  spin_unlock_irq(&wl->hardirq_lock);
 }

 orig_dev = dev;
 mutex_unlock(&wl->mutex);
 if (b43_bus_host_is_sdio(dev->dev)) {
  b43_sdio_free_irq(dev);
 } else {
  synchronize_irq(dev->dev->irq);
  free_irq(dev->dev->irq, dev);
 }
 mutex_lock(&wl->mutex);
 dev = wl->current_dev;
 if (!dev)
  return dev;
 if (dev != orig_dev) {
  if (b43_status(dev) >= B43_STAT_STARTED)
   goto redo;
  return dev;
 }
 mask = b43_read32(dev, B43_MMIO_GEN_IRQ_MASK);
 B43_WARN_ON(mask != 0xFFFFFFFF && mask);


 for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
  while (skb_queue_len(&wl->tx_queue[queue_num])) {
   struct sk_buff *skb;

   skb = skb_dequeue(&wl->tx_queue[queue_num]);
   ieee80211_free_txskb(wl->hw, skb);
  }
 }

 b43_mac_suspend(dev);
 b43_leds_exit(dev);
 b43dbg(wl, "Wireless interface stopped\n");

 return dev;
}
