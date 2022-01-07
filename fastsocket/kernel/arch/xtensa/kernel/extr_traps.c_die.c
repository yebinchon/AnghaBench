
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__* areg; } ;


 int TAINT_DIE ;
 int add_taint (int ) ;
 int console_verbose () ;
 int die_lock ;
 int do_exit (long) ;
 scalar_t__ in_interrupt () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int printk (char*,...) ;
 int show_regs (struct pt_regs*) ;
 int show_stack (int *,unsigned long*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int user_mode (struct pt_regs*) ;

void die(const char * str, struct pt_regs * regs, long err)
{
 static int die_counter;
 int nl = 0;

 console_verbose();
 spin_lock_irq(&die_lock);

 printk("%s: sig: %ld [#%d]\n", str, err, ++die_counter);




 if (nl)
  printk("\n");
 show_regs(regs);
 if (!user_mode(regs))
  show_stack(((void*)0), (unsigned long*)regs->areg[1]);

 add_taint(TAINT_DIE);
 spin_unlock_irq(&die_lock);

 if (in_interrupt())
  panic("Fatal exception in interrupt");

 if (panic_on_oops)
  panic("Fatal exception");

 do_exit(err);
}
