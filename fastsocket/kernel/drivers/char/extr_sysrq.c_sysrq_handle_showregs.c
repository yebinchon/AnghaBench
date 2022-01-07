
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 struct pt_regs* get_irq_regs () ;
 int perf_event_print_debug () ;
 int show_regs (struct pt_regs*) ;

__attribute__((used)) static void sysrq_handle_showregs(int key, struct tty_struct *tty)
{
 struct pt_regs *regs = get_irq_regs();
 if (regs)
  show_regs(regs);
 perf_event_print_debug();
}
