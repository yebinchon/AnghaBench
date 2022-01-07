
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_pinmux_bank {int hw_gpio_in; } ;
struct gpio_chip {int dummy; } ;


 int __raw_readl (int ) ;
 struct stmp3xxx_pinmux_bank* to_pinmux_bank (struct gpio_chip*) ;

__attribute__((used)) static int stmp3xxx_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct stmp3xxx_pinmux_bank *pm = to_pinmux_bank(chip);
 unsigned v;

 v = __raw_readl(pm->hw_gpio_in) & (1 << offset);
 return v ? 1 : 0;
}
