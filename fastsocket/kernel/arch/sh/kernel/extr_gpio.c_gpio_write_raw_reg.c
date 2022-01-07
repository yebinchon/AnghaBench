
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int ctrl_outb (unsigned long,unsigned long) ;
 int ctrl_outl (unsigned long,unsigned long) ;
 int ctrl_outw (unsigned long,unsigned long) ;

__attribute__((used)) static void gpio_write_raw_reg(unsigned long reg,
          unsigned long reg_width,
          unsigned long data)
{
 switch (reg_width) {
 case 8:
  ctrl_outb(data, reg);
  return;
 case 16:
  ctrl_outw(data, reg);
  return;
 case 32:
  ctrl_outl(data, reg);
  return;
 }

 BUG();
}
