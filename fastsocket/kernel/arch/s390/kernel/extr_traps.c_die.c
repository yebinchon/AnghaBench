
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {int trap_no; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int DIE_OOPS ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int add_taint (int ) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 TYPE_2__* current ;
 int debug_stop_all () ;
 int die_lock ;
 int do_exit (int ) ;
 scalar_t__ in_interrupt () ;
 int lgr_info_log () ;
 int notify_die (int ,char const*,struct pt_regs*,long,int ,int ) ;
 int oops_enter () ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int printk (char*,...) ;
 int show_regs (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(const char * str, struct pt_regs * regs, long err)
{
 static int die_counter;

 oops_enter();
 lgr_info_log();
 debug_stop_all();
 console_verbose();
 spin_lock_irq(&die_lock);
 bust_spinlocks(1);
 printk("%s: %04lx [#%d] ", str, err & 0xffff, ++die_counter);
 printk("\n");
 notify_die(DIE_OOPS, str, regs, err, current->thread.trap_no, SIGSEGV);
 show_regs(regs);
 bust_spinlocks(0);
 add_taint(TAINT_DIE);
 spin_unlock_irq(&die_lock);
 if (in_interrupt())
  panic("Fatal exception in interrupt");
 if (panic_on_oops)
  panic("Fatal exception: panic_on_oops");
 oops_exit();
 do_exit(SIGSEGV);
}
