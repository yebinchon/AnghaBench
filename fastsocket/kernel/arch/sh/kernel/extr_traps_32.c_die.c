
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int * regs; } ;
struct TYPE_5__ {char const* comm; } ;


 int DIE_OOPS ;
 int SIGSEGV ;
 int TAINT_DIE ;
 scalar_t__ THREAD_SIZE ;
 int add_taint (int ) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 int crash_kexec (struct pt_regs*) ;
 TYPE_1__* current ;
 int die_lock ;
 int do_exit (int ) ;
 int dump_mem (char*,int ,scalar_t__) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ kexec_should_crash (TYPE_1__*) ;
 int notify_die (int ,char const*,struct pt_regs*,long,int,int ) ;
 int oops_enter () ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int print_modules () ;
 int printk (char*,char const*,long,int) ;
 int show_regs (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sysfs_printk_last_file () ;
 long task_pid_nr (TYPE_1__*) ;
 int task_stack_page (TYPE_1__*) ;
 int user_mode (struct pt_regs*) ;

void die(const char * str, struct pt_regs * regs, long err)
{
 static int die_counter;

 oops_enter();

 spin_lock_irq(&die_lock);
 console_verbose();
 bust_spinlocks(1);

 printk("%s: %04lx [#%d]\n", str, err & 0xffff, ++die_counter);
 sysfs_printk_last_file();
 print_modules();
 show_regs(regs);

 printk("Process: %s (pid: %d, stack limit = %p)\n", current->comm,
   task_pid_nr(current), task_stack_page(current) + 1);

 if (!user_mode(regs) || in_interrupt())
  dump_mem("Stack: ", regs->regs[15], THREAD_SIZE +
    (unsigned long)task_stack_page(current));

 notify_die(DIE_OOPS, str, regs, err, 255, SIGSEGV);

 bust_spinlocks(0);
 add_taint(TAINT_DIE);
 spin_unlock_irq(&die_lock);
 oops_exit();

 if (kexec_should_crash(current))
  crash_kexec(regs);

 if (in_interrupt())
  panic("Fatal exception in interrupt");

 if (panic_on_oops)
  panic("Fatal exception");

 do_exit(SIGSEGV);
}
