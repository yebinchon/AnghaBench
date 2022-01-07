
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int psr; } ;


 int NR_PT_REGS ;
 int PSR_S ;
 int printk (char*,...) ;
 int * regnames ;

__attribute__((used)) static void show_backtrace_regs(struct pt_regs *frame)
{
 unsigned long *reg;
 int loop;


 printk("<-- %s Frame: @%p -->\n",
        frame->psr & PSR_S ? "Kernel Mode" : "User Mode",
        frame);

 reg = (unsigned long *) frame;
 for (loop = 0; loop < NR_PT_REGS; loop++) {
  printk("%s %08lx", regnames[loop + 0], reg[loop + 0]);

  if (loop == NR_PT_REGS - 1 || loop % 5 == 4)
   printk("\n");
  else
   printk(" | ");
 }

 printk("--------\n");
}
