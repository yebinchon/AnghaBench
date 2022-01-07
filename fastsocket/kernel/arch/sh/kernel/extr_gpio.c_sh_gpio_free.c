
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinmux_info {TYPE_1__* gpios; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int GPIO_CFG_FREE ;
 int PINMUX_FLAG_TYPE ;
 int PINMUX_TYPE_NONE ;
 struct pinmux_info* chip_to_pinmux (struct gpio_chip*) ;
 int gpio_lock ;
 int pinmux_config_gpio (struct pinmux_info*,unsigned int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct pinmux_info *gpioc = chip_to_pinmux(chip);
 unsigned long flags;
 int pinmux_type;

 if (!gpioc)
  return;

 spin_lock_irqsave(&gpio_lock, flags);

 pinmux_type = gpioc->gpios[offset].flags & PINMUX_FLAG_TYPE;
 pinmux_config_gpio(gpioc, offset, pinmux_type, GPIO_CFG_FREE);
 gpioc->gpios[offset].flags &= ~PINMUX_FLAG_TYPE;
 gpioc->gpios[offset].flags |= PINMUX_TYPE_NONE;

 spin_unlock_irqrestore(&gpio_lock, flags);
}
