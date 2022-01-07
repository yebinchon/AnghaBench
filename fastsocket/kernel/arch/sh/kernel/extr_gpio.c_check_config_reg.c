
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_info {int dummy; } ;
struct pinmux_cfg_reg {int field_width; int reg_width; int reg; } ;


 unsigned long gpio_read_reg (int ,int ,int,unsigned long) ;

__attribute__((used)) static int check_config_reg(struct pinmux_info *gpioc,
       struct pinmux_cfg_reg *crp,
       int index)
{
 unsigned long ncomb, pos, value;

 ncomb = 1 << crp->field_width;
 pos = index / ncomb;
 value = index % ncomb;

 if (gpio_read_reg(crp->reg, crp->reg_width,
     crp->field_width, pos) == value)
  return 0;

 return -1;
}
