
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct mpc8xxx_gpio_chip {int data; } ;


 scalar_t__ GPIO_DAT ;
 int in_be32 (scalar_t__) ;
 struct mpc8xxx_gpio_chip* to_mpc8xxx_gpio_chip (struct of_mm_gpio_chip*) ;

__attribute__((used)) static void mpc8xxx_gpio_save_regs(struct of_mm_gpio_chip *mm)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = to_mpc8xxx_gpio_chip(mm);

 mpc8xxx_gc->data = in_be32(mm->regs + GPIO_DAT);
}
