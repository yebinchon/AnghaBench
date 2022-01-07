
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 scalar_t__ kernel_text_address (unsigned long) ;
 int kstack_end (unsigned long*) ;
 int print_symbol (char*,unsigned long) ;
 int printk (char*,...) ;

__attribute__((used)) static void show_trace_log_lvl(struct task_struct *tsk, unsigned long *sp,
          struct pt_regs *regs, const char *log_lvl)
{
 unsigned long addr;

 printk("%sCall trace:\n", log_lvl);

 while (!kstack_end(sp)) {
  addr = *sp++;
  if (kernel_text_address(addr)) {



   printk(" [<%08lx>] ", addr);

   print_symbol("%s\n", addr);
  }
 }
 printk("\n");
}
