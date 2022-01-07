
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct em28xx {scalar_t__ reg_gpo_num; int reg_gpo; scalar_t__ reg_gpio_num; int reg_gpio; } ;


 int em28xx_read_reg (struct em28xx*,scalar_t__) ;
 int em28xx_write_regs (struct em28xx*,scalar_t__,int*,int) ;

int em28xx_write_reg_bits(struct em28xx *dev, u16 reg, u8 val,
     u8 bitmask)
{
 int oldval;
 u8 newval;


 if (reg == dev->reg_gpo_num)
  oldval = dev->reg_gpo;
 else if (reg == dev->reg_gpio_num)
  oldval = dev->reg_gpio;
 else
  oldval = em28xx_read_reg(dev, reg);

 if (oldval < 0)
  return oldval;

 newval = (((u8) oldval) & ~bitmask) | (val & bitmask);

 return em28xx_write_regs(dev, reg, &newval, 1);
}
