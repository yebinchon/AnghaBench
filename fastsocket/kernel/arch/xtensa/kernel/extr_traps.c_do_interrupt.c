
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int INTCLEAR ;
 int INTENABLE ;
 int INTREAD ;
 int XCHAL_NUM_INTERRUPTS ;
 int do_IRQ (int,struct pt_regs*) ;
 unsigned long get_sr (int ) ;
 int set_sr (int,int ) ;

void do_interrupt (struct pt_regs *regs)
{
 unsigned long intread = get_sr (INTREAD);
 unsigned long intenable = get_sr (INTENABLE);
 int i, mask;






 for (i=0, mask = 1; i < XCHAL_NUM_INTERRUPTS; i++, mask <<= 1) {
  if (mask & (intread & intenable)) {
   set_sr (mask, INTCLEAR);
   do_IRQ (i,regs);
  }
 }
}
