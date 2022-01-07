
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_pinmux_bank {int hw_gpio_doe; } ;
struct gpio_chip {int dummy; } ;


 int stmp3xxx_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int stmp3xxx_setl (int,int ) ;
 struct stmp3xxx_pinmux_bank* to_pinmux_bank (struct gpio_chip*) ;

__attribute__((used)) static int stmp3xxx_gpio_output(struct gpio_chip *chip, unsigned offset, int v)
{
 struct stmp3xxx_pinmux_bank *pm = to_pinmux_bank(chip);

 stmp3xxx_setl(1 << offset, pm->hw_gpio_doe);
 stmp3xxx_gpio_set(chip, offset, v);
 return 0;
}
