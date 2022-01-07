
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct die_args {int err; int signr; int trapnr; struct pt_regs* regs; } ;







 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int TIF_SINGLESTEP ;
 int atomic_read (int *) ;
 int kgdb_active ;
 int kgdb_cpu_doing_single_step ;
 scalar_t__ kgdb_handle_exception (int ,int ,int ,struct pt_regs*) ;
 int kgdb_nmicallback (int,struct pt_regs*) ;
 int raw_smp_processor_id () ;
 int single_step_cont (struct pt_regs*,struct die_args*) ;
 int test_thread_flag (int ) ;
 int touch_nmi_watchdog () ;
 int user_mode (struct pt_regs*) ;
 int* was_in_debug_nmi ;

__attribute__((used)) static int __kgdb_notify(struct die_args *args, unsigned long cmd)
{
 struct pt_regs *regs = args->regs;

 switch (cmd) {
 case 131:
  if (atomic_read(&kgdb_active) != -1) {

   kgdb_nmicallback(raw_smp_processor_id(), regs);
   was_in_debug_nmi[raw_smp_processor_id()] = 1;
   touch_nmi_watchdog();
   return NOTIFY_STOP;
  }
  return NOTIFY_DONE;

 case 128:

  return NOTIFY_DONE;

 case 130:
  if (was_in_debug_nmi[raw_smp_processor_id()]) {
   was_in_debug_nmi[raw_smp_processor_id()] = 0;
   return NOTIFY_STOP;
  }
  return NOTIFY_DONE;

 case 129:
  if (atomic_read(&kgdb_active) != -1) {

   kgdb_nmicallback(raw_smp_processor_id(), regs);
   return NOTIFY_STOP;
  }

  break;

 case 132:
  if (atomic_read(&kgdb_cpu_doing_single_step) ==
      raw_smp_processor_id()) {
   if (user_mode(regs))
    return single_step_cont(regs, args);
   break;
  } else if (test_thread_flag(TIF_SINGLESTEP))



   return NOTIFY_DONE;

 default:
  if (user_mode(regs))
   return NOTIFY_DONE;
 }

 if (kgdb_handle_exception(args->trapnr, args->signr, args->err, regs))
  return NOTIFY_DONE;


 touch_nmi_watchdog();
 return NOTIFY_STOP;
}
