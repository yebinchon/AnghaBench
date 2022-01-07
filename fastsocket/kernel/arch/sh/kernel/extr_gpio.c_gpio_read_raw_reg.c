
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 unsigned long ctrl_inb (unsigned long) ;
 unsigned long ctrl_inl (unsigned long) ;
 unsigned long ctrl_inw (unsigned long) ;

__attribute__((used)) static unsigned long gpio_read_raw_reg(unsigned long reg,
           unsigned long reg_width)
{
 switch (reg_width) {
 case 8:
  return ctrl_inb(reg);
 case 16:
  return ctrl_inw(reg);
 case 32:
  return ctrl_inl(reg);
 }

 BUG();
 return 0;
}
