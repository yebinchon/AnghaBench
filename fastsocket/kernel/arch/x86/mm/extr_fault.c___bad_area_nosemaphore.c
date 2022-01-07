
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr2; unsigned long error_code; int trap_no; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;


 unsigned long PF_USER ;
 int SIGSEGV ;
 unsigned long TASK_SIZE ;
 struct task_struct* current ;
 int force_sig_info_fault (int ,int,unsigned long,struct task_struct*,int ) ;
 scalar_t__ is_errata100 (struct pt_regs*,unsigned long) ;
 scalar_t__ is_f00f_bug (struct pt_regs*,unsigned long) ;
 scalar_t__ is_prefetch (struct pt_regs*,unsigned long,unsigned long) ;
 int local_irq_enable () ;
 int no_context (struct pt_regs*,unsigned long,unsigned long) ;
 int show_signal_msg (struct pt_regs*,unsigned long,unsigned long,struct task_struct*) ;
 int show_unhandled_signals ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
__bad_area_nosemaphore(struct pt_regs *regs, unsigned long error_code,
         unsigned long address, int si_code)
{
 struct task_struct *tsk = current;


 if (error_code & PF_USER) {



  local_irq_enable();





  if (is_prefetch(regs, error_code, address))
   return;

  if (is_errata100(regs, address))
   return;

  if (unlikely(show_unhandled_signals))
   show_signal_msg(regs, error_code, address, tsk);


  tsk->thread.cr2 = address;
  tsk->thread.error_code = error_code | (address >= TASK_SIZE);
  tsk->thread.trap_no = 14;

  force_sig_info_fault(SIGSEGV, si_code, address, tsk, 0);

  return;
 }

 if (is_f00f_bug(regs, address))
  return;

 no_context(regs, error_code, address);
}
