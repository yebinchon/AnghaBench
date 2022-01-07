
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_data_reg {unsigned long reg_width; int reg_shadow; int reg; } ;


 int clear_bit (unsigned long,int *) ;
 int gpio_write_raw_reg (int ,unsigned long,int ) ;
 int pr_info (char*,int ,int,unsigned long,unsigned long) ;
 int set_bit (unsigned long,int *) ;

__attribute__((used)) static void gpio_write_bit(struct pinmux_data_reg *dr,
      unsigned long in_pos, unsigned long value)
{
 unsigned long pos;

 pos = dr->reg_width - (in_pos + 1);







 if (value)
  set_bit(pos, &dr->reg_shadow);
 else
  clear_bit(pos, &dr->reg_shadow);

 gpio_write_raw_reg(dr->reg, dr->reg_width, dr->reg_shadow);
}
