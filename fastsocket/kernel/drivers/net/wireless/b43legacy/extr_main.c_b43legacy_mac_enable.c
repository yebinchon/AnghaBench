
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_wldev {scalar_t__ mac_suspended; int irq_mask; TYPE_1__* wl; } ;
struct TYPE_2__ {int irq_lock; } ;


 int B43legacy_IRQ_MAC_SUSPENDED ;
 int B43legacy_MACCTL_ENABLED ;
 int B43legacy_MMIO_GEN_IRQ_MASK ;
 int B43legacy_MMIO_GEN_IRQ_REASON ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_power_saving_ctl_bits (struct b43legacy_wldev*,int,int) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int irqs_disabled () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void b43legacy_mac_enable(struct b43legacy_wldev *dev)
{
 dev->mac_suspended--;
 B43legacy_WARN_ON(dev->mac_suspended < 0);
 B43legacy_WARN_ON(irqs_disabled());
 if (dev->mac_suspended == 0) {
  b43legacy_write32(dev, B43legacy_MMIO_MACCTL,
      b43legacy_read32(dev,
      B43legacy_MMIO_MACCTL)
      | B43legacy_MACCTL_ENABLED);
  b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_REASON,
      B43legacy_IRQ_MAC_SUSPENDED);

  b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
  b43legacy_read32(dev, B43legacy_MMIO_GEN_IRQ_REASON);
  b43legacy_power_saving_ctl_bits(dev, -1, -1);


  spin_lock_irq(&dev->wl->irq_lock);
  b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK,
      dev->irq_mask);
  spin_unlock_irq(&dev->wl->irq_lock);
 }
}
