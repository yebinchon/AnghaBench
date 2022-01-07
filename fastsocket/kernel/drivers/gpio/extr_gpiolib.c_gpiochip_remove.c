
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {unsigned int base; unsigned int ngpio; } ;
struct TYPE_2__ {int * chip; int flags; } ;


 int EBUSY ;
 int FLAG_REQUESTED ;
 TYPE_1__* gpio_desc ;
 int gpio_lock ;
 int gpiochip_unexport (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

int gpiochip_remove(struct gpio_chip *chip)
{
 unsigned long flags;
 int status = 0;
 unsigned id;

 spin_lock_irqsave(&gpio_lock, flags);

 for (id = chip->base; id < chip->base + chip->ngpio; id++) {
  if (test_bit(FLAG_REQUESTED, &gpio_desc[id].flags)) {
   status = -EBUSY;
   break;
  }
 }
 if (status == 0) {
  for (id = chip->base; id < chip->base + chip->ngpio; id++)
   gpio_desc[id].chip = ((void*)0);
 }

 spin_unlock_irqrestore(&gpio_lock, flags);

 if (status == 0)
  gpiochip_unexport(chip);

 return status;
}
