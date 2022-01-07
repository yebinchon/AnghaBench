
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long error_code; int trap_no; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;
typedef int siginfo_t ;


 struct task_struct* current ;
 int die (char const*,struct pt_regs*,long) ;
 int fixup_exception (struct pt_regs*) ;
 int force_sig (int,struct task_struct*) ;
 int force_sig_info (int,int *,struct task_struct*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static __inline__ void do_trap(int trapnr, int signr, const char * str,
 struct pt_regs * regs, long error_code, siginfo_t *info)
{
 if (user_mode(regs)) {

  struct task_struct *tsk = current;
  tsk->thread.error_code = error_code;
  tsk->thread.trap_no = trapnr;
  if (info)
   force_sig_info(signr, info, tsk);
  else
   force_sig(signr, tsk);
  return;
 } else {

  if (!fixup_exception(regs))
   die(str, regs, error_code);
  return;
 }
}
