
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGSEGV ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 int die_lock ;
 int do_exit (int ) ;
 int printk (char*,char const*,long) ;
 int show_registers (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(const char * str, struct pt_regs * regs, long err)
{
 console_verbose();
 spin_lock_irq(&die_lock);
 bust_spinlocks(1);
 printk("%s: %04lx\n", str, err & 0xffff);
 show_registers(regs);
 bust_spinlocks(0);
 spin_unlock_irq(&die_lock);
 do_exit(SIGSEGV);
}
