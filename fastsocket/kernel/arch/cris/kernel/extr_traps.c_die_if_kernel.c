
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int do_exit (int ) ;
 int handle_BUG (struct pt_regs*) ;
 scalar_t__ oops_in_progress ;
 int printk (char*,char const*,long) ;
 int reset_watchdog () ;
 int show_registers (struct pt_regs*) ;
 int stop_watchdog () ;
 scalar_t__ user_mode (struct pt_regs*) ;

void
die_if_kernel(const char *str, struct pt_regs *regs, long err)
{
 if (user_mode(regs))
  return;
 handle_BUG(regs);

 printk("%s: %04lx\n", str, err & 0xffff);

 show_registers(regs);

 oops_in_progress = 0;




 do_exit(SIGSEGV);
}
