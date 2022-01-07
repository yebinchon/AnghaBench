
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gpio_chip {unsigned int ngpio; } ;


 int GIUPIODH ;
 int GIUPIODL ;
 int GIUPODATH ;
 int GIUPODATL ;
 int giu_lock ;
 int giu_read (int) ;
 int giu_write (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vr41xx_gpio_set(struct gpio_chip *chip, unsigned pin,
       int value)
{
 u16 offset, mask, reg;
 unsigned long flags;

 if (pin >= chip->ngpio)
  return;

 if (pin < 16) {
  offset = GIUPIODL;
  mask = 1 << pin;
 } else if (pin < 32) {
  offset = GIUPIODH;
  mask = 1 << (pin - 16);
 } else if (pin < 48) {
  offset = GIUPODATL;
  mask = 1 << (pin - 32);
 } else {
  offset = GIUPODATH;
  mask = 1 << (pin - 48);
 }

 spin_lock_irqsave(&giu_lock, flags);

 reg = giu_read(offset);
 if (value)
  reg |= mask;
 else
  reg &= ~mask;
 giu_write(offset, reg);

 spin_unlock_irqrestore(&giu_lock, flags);
}
