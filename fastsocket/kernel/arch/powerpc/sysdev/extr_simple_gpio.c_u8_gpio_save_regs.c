
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u8_gpio_chip {int data; } ;
struct of_mm_gpio_chip {int regs; } ;


 int in_8 (int ) ;
 struct u8_gpio_chip* to_u8_gpio_chip (struct of_mm_gpio_chip*) ;

__attribute__((used)) static void u8_gpio_save_regs(struct of_mm_gpio_chip *mm_gc)
{
 struct u8_gpio_chip *u8_gc = to_u8_gpio_chip(mm_gc);

 u8_gc->data = in_8(mm_gc->regs);
}
