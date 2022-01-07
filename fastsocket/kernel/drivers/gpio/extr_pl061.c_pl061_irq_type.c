
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pl061_gpio {unsigned int irq_base; int irq_lock; scalar_t__ base; } ;


 int EINVAL ;
 scalar_t__ GPIOIBE ;
 scalar_t__ GPIOIEV ;
 scalar_t__ GPIOIS ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 int PL061_GPIO_NR ;
 struct pl061_gpio* get_irq_chip_data (unsigned int) ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int pl061_irq_type(unsigned irq, unsigned trigger)
{
 struct pl061_gpio *chip = get_irq_chip_data(irq);
 int offset = irq - chip->irq_base;
 unsigned long flags;
 u8 gpiois, gpioibe, gpioiev;

 if (offset < 0 || offset > PL061_GPIO_NR)
  return -EINVAL;

 spin_lock_irqsave(&chip->irq_lock, flags);

 gpioiev = readb(chip->base + GPIOIEV);

 gpiois = readb(chip->base + GPIOIS);
 if (trigger & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) {
  gpiois |= 1 << offset;
  if (trigger & IRQ_TYPE_LEVEL_HIGH)
   gpioiev |= 1 << offset;
  else
   gpioiev &= ~(1 << offset);
 } else
  gpiois &= ~(1 << offset);
 writeb(gpiois, chip->base + GPIOIS);

 gpioibe = readb(chip->base + GPIOIBE);
 if ((trigger & IRQ_TYPE_EDGE_BOTH) == IRQ_TYPE_EDGE_BOTH)
  gpioibe |= 1 << offset;
 else {
  gpioibe &= ~(1 << offset);
  if (trigger & IRQ_TYPE_EDGE_RISING)
   gpioiev |= 1 << offset;
  else
   gpioiev &= ~(1 << offset);
 }
 writeb(gpioibe, chip->base + GPIOIBE);

 writeb(gpioiev, chip->base + GPIOIEV);

 spin_unlock_irqrestore(&chip->irq_lock, flags);

 return 0;
}
