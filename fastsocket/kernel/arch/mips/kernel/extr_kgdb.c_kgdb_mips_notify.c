
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cp0_cause; unsigned long cp0_epc; } ;
struct notifier_block {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;


 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int __flush_cache_all () ;
 int atomic_read (int *) ;
 scalar_t__ breakinst ;
 int compute_signal (int) ;
 int kgdb_active ;
 scalar_t__ kgdb_handle_exception (int,int ,int ,struct pt_regs*) ;
 int kgdb_nmicallback (int ,struct pt_regs*) ;
 int kgdb_setting_breakpoint ;
 int local_irq_enable () ;
 int smp_processor_id () ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int kgdb_mips_notify(struct notifier_block *self, unsigned long cmd,
       void *ptr)
{
 struct die_args *args = (struct die_args *)ptr;
 struct pt_regs *regs = args->regs;
 int trap = (regs->cp0_cause & 0x7c) >> 2;


 if (user_mode(regs))
  return NOTIFY_DONE;

 if (atomic_read(&kgdb_active) != -1)
  kgdb_nmicallback(smp_processor_id(), regs);

 if (kgdb_handle_exception(trap, compute_signal(trap), 0, regs))
  return NOTIFY_DONE;

 if (atomic_read(&kgdb_setting_breakpoint))
  if ((trap == 9) && (regs->cp0_epc == (unsigned long)breakinst))
   regs->cp0_epc += 4;


 local_irq_enable();
 __flush_cache_all();

 return NOTIFY_STOP;
}
