
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {scalar_t__ mac_suspended; int wl; } ;


 int B43_IRQ_MAC_SUSPENDED ;
 int B43_MACCTL_ENABLED ;
 int B43_MMIO_GEN_IRQ_REASON ;
 int B43_MMIO_MACCTL ;
 int B43_PS_AWAKE ;
 int B43_WARN_ON (int) ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_power_saving_ctl_bits (struct b43_wldev*,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43err (int ,char*) ;
 int might_sleep () ;
 int msleep (int) ;
 int udelay (int) ;

void b43_mac_suspend(struct b43_wldev *dev)
{
 int i;
 u32 tmp;

 might_sleep();
 B43_WARN_ON(dev->mac_suspended < 0);

 if (dev->mac_suspended == 0) {
  b43_power_saving_ctl_bits(dev, B43_PS_AWAKE);
  b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_ENABLED, 0);

  b43_read32(dev, B43_MMIO_MACCTL);
  for (i = 35; i; i--) {
   tmp = b43_read32(dev, B43_MMIO_GEN_IRQ_REASON);
   if (tmp & B43_IRQ_MAC_SUSPENDED)
    goto out;
   udelay(10);
  }

  for (i = 40; i; i--) {
   tmp = b43_read32(dev, B43_MMIO_GEN_IRQ_REASON);
   if (tmp & B43_IRQ_MAC_SUSPENDED)
    goto out;
   msleep(1);
  }
  b43err(dev->wl, "MAC suspend failed\n");
 }
out:
 dev->mac_suspended++;
}
