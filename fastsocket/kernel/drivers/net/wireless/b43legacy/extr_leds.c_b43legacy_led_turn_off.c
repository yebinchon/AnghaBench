
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43legacy_wldev {struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int leds_lock; } ;


 int B43legacy_MMIO_GPIO_CONTROL ;
 int b43legacy_read16 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void b43legacy_led_turn_off(struct b43legacy_wldev *dev, u8 led_index,
        bool activelow)
{
 struct b43legacy_wl *wl = dev->wl;
 unsigned long flags;
 u16 ctl;

 spin_lock_irqsave(&wl->leds_lock, flags);
 ctl = b43legacy_read16(dev, B43legacy_MMIO_GPIO_CONTROL);
 if (activelow)
  ctl |= (1 << led_index);
 else
  ctl &= ~(1 << led_index);
 b43legacy_write16(dev, B43legacy_MMIO_GPIO_CONTROL, ctl);
 spin_unlock_irqrestore(&wl->leds_lock, flags);
}
