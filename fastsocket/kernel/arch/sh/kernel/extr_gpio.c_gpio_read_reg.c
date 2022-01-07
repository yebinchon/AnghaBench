
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gpio_read_raw_reg (unsigned long,unsigned long) ;
 int pr_info (char*,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int gpio_read_reg(unsigned long reg, unsigned long reg_width,
    unsigned long field_width, unsigned long in_pos)
{
 unsigned long data, mask, pos;

 data = 0;
 mask = (1 << field_width) - 1;
 pos = reg_width - ((in_pos + 1) * field_width);







 data = gpio_read_raw_reg(reg, reg_width);
 return (data >> pos) & mask;
}
