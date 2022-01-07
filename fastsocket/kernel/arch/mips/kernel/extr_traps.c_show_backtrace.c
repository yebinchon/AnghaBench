
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {unsigned long* regs; unsigned long cp0_epc; } ;


 int __kernel_text_address (unsigned long) ;
 int print_ip_sym (unsigned long) ;
 int printk (char*) ;
 scalar_t__ raw_show_trace ;
 int show_raw_backtrace (unsigned long) ;
 unsigned long unwind_stack (struct task_struct*,unsigned long*,unsigned long,unsigned long*) ;

__attribute__((used)) static void show_backtrace(struct task_struct *task, const struct pt_regs *regs)
{
 unsigned long sp = regs->regs[29];
 unsigned long ra = regs->regs[31];
 unsigned long pc = regs->cp0_epc;

 if (raw_show_trace || !__kernel_text_address(pc)) {
  show_raw_backtrace(sp);
  return;
 }
 printk("Call Trace:\n");
 do {
  print_ip_sym(pc);
  pc = unwind_stack(task, &sp, pc, &ra);
 } while (pc);
 printk("\n");
}
