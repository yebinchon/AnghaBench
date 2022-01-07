
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pl061_gpio {unsigned int irq_base; int irq_lock; scalar_t__ base; } ;


 scalar_t__ GPIOIE ;
 struct pl061_gpio* get_irq_chip_data (unsigned int) ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void pl061_irq_disable(unsigned irq)
{
 struct pl061_gpio *chip = get_irq_chip_data(irq);
 int offset = irq - chip->irq_base;
 unsigned long flags;
 u8 gpioie;

 spin_lock_irqsave(&chip->irq_lock, flags);
 gpioie = readb(chip->base + GPIOIE);
 gpioie &= ~(1 << offset);
 writeb(gpioie, chip->base + GPIOIE);
 spin_unlock_irqrestore(&chip->irq_lock, flags);
}
