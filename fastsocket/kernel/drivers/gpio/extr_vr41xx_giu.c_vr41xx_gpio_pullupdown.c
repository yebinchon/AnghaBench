
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef scalar_t__ gpio_pull_t ;


 int EINVAL ;
 int EPERM ;
 int GIUTERMUPDN ;
 int GIUUSEUPDN ;
 int GPIO_HAS_PULLUPDOWN_IO ;
 scalar_t__ GPIO_PULL_DOWN ;
 scalar_t__ GPIO_PULL_UP ;
 int giu_flags ;
 int giu_lock ;
 int giu_read (int ) ;
 int giu_write (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int vr41xx_gpio_pullupdown(unsigned int pin, gpio_pull_t pull)
{
 u16 reg, mask;
 unsigned long flags;

 if ((giu_flags & GPIO_HAS_PULLUPDOWN_IO) != GPIO_HAS_PULLUPDOWN_IO)
  return -EPERM;

 if (pin >= 15)
  return -EINVAL;

 mask = 1 << pin;

 spin_lock_irqsave(&giu_lock, flags);

 if (pull == GPIO_PULL_UP || pull == GPIO_PULL_DOWN) {
  reg = giu_read(GIUTERMUPDN);
  if (pull == GPIO_PULL_UP)
   reg |= mask;
  else
   reg &= ~mask;
  giu_write(GIUTERMUPDN, reg);

  reg = giu_read(GIUUSEUPDN);
  reg |= mask;
  giu_write(GIUUSEUPDN, reg);
 } else {
  reg = giu_read(GIUUSEUPDN);
  reg &= ~mask;
  giu_write(GIUUSEUPDN, reg);
 }

 spin_unlock_irqrestore(&giu_lock, flags);

 return 0;
}
