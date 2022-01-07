
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; struct gpio_chip* chip; } ;
struct gpio_chip {int owner; scalar_t__ base; int (* free ) (struct gpio_chip*,scalar_t__) ;scalar_t__ can_sleep; } ;


 int FLAG_REQUESTED ;
 int WARN_ON (scalar_t__) ;
 int clear_bit (int ,int *) ;
 int desc_set_label (struct gpio_desc*,int *) ;
 scalar_t__ extra_checks ;
 struct gpio_desc* gpio_desc ;
 int gpio_is_valid (unsigned int) ;
 int gpio_lock ;
 int gpio_unexport (unsigned int) ;
 int might_sleep () ;
 int might_sleep_if (int) ;
 int module_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct gpio_chip*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

void gpio_free(unsigned gpio)
{
 unsigned long flags;
 struct gpio_desc *desc;
 struct gpio_chip *chip;

 might_sleep();

 if (!gpio_is_valid(gpio)) {
  WARN_ON(extra_checks);
  return;
 }

 gpio_unexport(gpio);

 spin_lock_irqsave(&gpio_lock, flags);

 desc = &gpio_desc[gpio];
 chip = desc->chip;
 if (chip && test_bit(FLAG_REQUESTED, &desc->flags)) {
  if (chip->free) {
   spin_unlock_irqrestore(&gpio_lock, flags);
   might_sleep_if(extra_checks && chip->can_sleep);
   chip->free(chip, gpio - chip->base);
   spin_lock_irqsave(&gpio_lock, flags);
  }
  desc_set_label(desc, ((void*)0));
  module_put(desc->chip->owner);
  clear_bit(FLAG_REQUESTED, &desc->flags);
 } else
  WARN_ON(extra_checks);

 spin_unlock_irqrestore(&gpio_lock, flags);
}
