
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_info {int first_gpio; int last_gpio; struct pinmux_data_reg* data_regs; } ;
struct pinmux_data_reg {int reg_width; int reg; int reg_shadow; } ;


 int gpio_read_raw_reg (int ,int ) ;
 int setup_data_reg (struct pinmux_info*,int) ;

__attribute__((used)) static void setup_data_regs(struct pinmux_info *gpioc)
{
 struct pinmux_data_reg *drp;
 int k;

 for (k = gpioc->first_gpio; k <= gpioc->last_gpio; k++)
  setup_data_reg(gpioc, k);

 k = 0;
 while (1) {
  drp = gpioc->data_regs + k;

  if (!drp->reg_width)
   break;

  drp->reg_shadow = gpio_read_raw_reg(drp->reg, drp->reg_width);
  k++;
 }
}
