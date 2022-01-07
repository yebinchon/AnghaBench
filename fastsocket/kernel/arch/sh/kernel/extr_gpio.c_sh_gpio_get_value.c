
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_info {int dummy; } ;
struct pinmux_data_reg {int reg_width; int reg; } ;


 int BUG () ;
 scalar_t__ get_data_reg (struct pinmux_info*,unsigned int,struct pinmux_data_reg**,int*) ;
 int gpio_read_reg (int ,int ,int,int) ;

__attribute__((used)) static int sh_gpio_get_value(struct pinmux_info *gpioc, unsigned gpio)
{
 struct pinmux_data_reg *dr = ((void*)0);
 int bit = 0;

 if (!gpioc || get_data_reg(gpioc, gpio, &dr, &bit) != 0) {
  BUG();
  return 0;
 }

 return gpio_read_reg(dr->reg, dr->reg_width, 1, bit);
}
