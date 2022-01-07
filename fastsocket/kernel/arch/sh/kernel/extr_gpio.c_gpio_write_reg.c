
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ctrl_inb (unsigned long) ;
 unsigned long ctrl_inl (unsigned long) ;
 unsigned long ctrl_inw (unsigned long) ;
 int ctrl_outb (unsigned long,unsigned long) ;
 int ctrl_outl (unsigned long,unsigned long) ;
 int ctrl_outw (unsigned long,unsigned long) ;
 int pr_info (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void gpio_write_reg(unsigned long reg, unsigned long reg_width,
      unsigned long field_width, unsigned long in_pos,
      unsigned long value)
{
 unsigned long mask, pos;

 mask = (1 << field_width) - 1;
 pos = reg_width - ((in_pos + 1) * field_width);







 mask = ~(mask << pos);
 value = value << pos;

 switch (reg_width) {
 case 8:
  ctrl_outb((ctrl_inb(reg) & mask) | value, reg);
  break;
 case 16:
  ctrl_outw((ctrl_inw(reg) & mask) | value, reg);
  break;
 case 32:
  ctrl_outl((ctrl_inl(reg) & mask) | value, reg);
  break;
 }
}
