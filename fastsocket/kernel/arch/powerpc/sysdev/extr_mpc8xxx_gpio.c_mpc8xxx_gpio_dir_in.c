
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct mpc8xxx_gpio_chip {int lock; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GPIO_DIR ;
 int clrbits32 (scalar_t__,int ) ;
 int mpc8xxx_gpio2mask (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mpc8xxx_gpio_chip* to_mpc8xxx_gpio_chip (struct of_mm_gpio_chip*) ;
 struct of_mm_gpio_chip* to_of_mm_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int mpc8xxx_gpio_dir_in(struct gpio_chip *gc, unsigned int gpio)
{
 struct of_mm_gpio_chip *mm = to_of_mm_gpio_chip(gc);
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = to_mpc8xxx_gpio_chip(mm);
 unsigned long flags;

 spin_lock_irqsave(&mpc8xxx_gc->lock, flags);

 clrbits32(mm->regs + GPIO_DIR, mpc8xxx_gpio2mask(gpio));

 spin_unlock_irqrestore(&mpc8xxx_gc->lock, flags);

 return 0;
}
