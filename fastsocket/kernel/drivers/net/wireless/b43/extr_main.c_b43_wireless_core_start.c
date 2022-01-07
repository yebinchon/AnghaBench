
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* wl; int irq_mask; TYPE_3__* dev; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int hw; } ;


 int B43_MMIO_GEN_IRQ_MASK ;
 scalar_t__ B43_STAT_INITIALIZED ;
 int B43_STAT_STARTED ;
 int B43_WARN_ON (int) ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 scalar_t__ b43_bus_host_is_sdio (TYPE_3__*) ;
 int b43_interrupt_handler ;
 int b43_interrupt_thread_handler ;
 int b43_leds_init (struct b43_wldev*) ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_periodic_tasks_setup (struct b43_wldev*) ;
 int b43_sdio_interrupt_handler ;
 int b43_sdio_request_irq (struct b43_wldev*,int ) ;
 int b43_set_status (struct b43_wldev*,int ) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int b43_write32 (struct b43_wldev*,int ,int ) ;
 int b43dbg (TYPE_1__*,char*) ;
 int b43err (TYPE_1__*,char*,...) ;
 int drain_txstatus_queue (struct b43_wldev*) ;
 int ieee80211_wake_queues (int ) ;
 int request_threaded_irq (int ,int ,int ,int ,int ,struct b43_wldev*) ;

__attribute__((used)) static int b43_wireless_core_start(struct b43_wldev *dev)
{
 int err;

 B43_WARN_ON(b43_status(dev) != B43_STAT_INITIALIZED);

 drain_txstatus_queue(dev);
 if (b43_bus_host_is_sdio(dev->dev)) {
  err = b43_sdio_request_irq(dev, b43_sdio_interrupt_handler);
  if (err) {
   b43err(dev->wl, "Cannot request SDIO IRQ\n");
   goto out;
  }
 } else {
  err = request_threaded_irq(dev->dev->irq, b43_interrupt_handler,
        b43_interrupt_thread_handler,
        IRQF_SHARED, KBUILD_MODNAME, dev);
  if (err) {
   b43err(dev->wl, "Cannot request IRQ-%d\n",
          dev->dev->irq);
   goto out;
  }
 }


 ieee80211_wake_queues(dev->wl->hw);
 b43_set_status(dev, B43_STAT_STARTED);


 b43_mac_enable(dev);
 b43_write32(dev, B43_MMIO_GEN_IRQ_MASK, dev->irq_mask);


 b43_periodic_tasks_setup(dev);

 b43_leds_init(dev);

 b43dbg(dev->wl, "Wireless interface started\n");
out:
 return err;
}
