
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int console_verbose () ;
 int die_lock ;
 int do_exit (int ) ;
 int printk (char*,char const*,long) ;
 int show_regs (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(const char * str, struct pt_regs * regs, long err)
{
 console_verbose();
 spin_lock_irq(&die_lock);
 printk("%s: %lx\n", str, (err & 0xffffff));
 show_regs(regs);
 spin_unlock_irq(&die_lock);
 do_exit(SIGSEGV);
}
