
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int console_verbose () ;
 int do_exit (int ) ;
 int printk (char*,...) ;
 int show_registers (struct pt_regs*) ;

void __die(const char *str, struct pt_regs *regs, const char *file,
 const char *func, unsigned long line)
{
 console_verbose();
 printk("%s", str);
 if (file && func)
  printk(" in %s:%s, line %ld", file, func, line);
 printk(":\n");
 show_registers(regs);
 do_exit(SIGSEGV);
}
