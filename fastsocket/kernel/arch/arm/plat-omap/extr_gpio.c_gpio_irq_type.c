
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_bank {int lock; } ;
struct TYPE_2__ {unsigned int status; } ;


 int EINVAL ;
 unsigned int IH_GPIO_BASE ;
 unsigned int IH_MPUIO_BASE ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 unsigned int OMAP_MPUIO (unsigned int) ;
 int __set_irq_handler_unlocked (unsigned int,int ) ;
 int _set_gpio_triggering (struct gpio_bank*,int ,unsigned int) ;
 scalar_t__ check_gpio (unsigned int) ;
 int cpu_class_is_omap2 () ;
 int get_gpio_index (unsigned int) ;
 struct gpio_bank* get_irq_chip_data (unsigned int) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 TYPE_1__* irq_desc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gpio_irq_type(unsigned irq, unsigned type)
{
 struct gpio_bank *bank;
 unsigned gpio;
 int retval;
 unsigned long flags;

 if (!cpu_class_is_omap2() && irq > IH_MPUIO_BASE)
  gpio = OMAP_MPUIO(irq - IH_MPUIO_BASE);
 else
  gpio = irq - IH_GPIO_BASE;

 if (check_gpio(gpio) < 0)
  return -EINVAL;

 if (type & ~IRQ_TYPE_SENSE_MASK)
  return -EINVAL;


 if (!cpu_class_is_omap2()
   && (type & (IRQ_TYPE_LEVEL_LOW|IRQ_TYPE_LEVEL_HIGH)))
  return -EINVAL;

 bank = get_irq_chip_data(irq);
 spin_lock_irqsave(&bank->lock, flags);
 retval = _set_gpio_triggering(bank, get_gpio_index(gpio), type);
 if (retval == 0) {
  irq_desc[irq].status &= ~IRQ_TYPE_SENSE_MASK;
  irq_desc[irq].status |= type;
 }
 spin_unlock_irqrestore(&bank->lock, flags);

 if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
  __set_irq_handler_unlocked(irq, handle_level_irq);
 else if (type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
  __set_irq_handler_unlocked(irq, handle_edge_irq);

 return retval;
}
