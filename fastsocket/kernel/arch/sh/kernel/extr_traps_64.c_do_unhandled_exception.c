
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long error_code; int trap_no; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;


 int die_if_no_fixup (char*,struct pt_regs*,unsigned long) ;
 int force_sig (int,struct task_struct*) ;
 int show_excp_regs (char*,int,int,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void do_unhandled_exception(int trapnr, int signr, char *str, char *fn_name,
  unsigned long error_code, struct pt_regs *regs, struct task_struct *tsk)
{
 show_excp_regs(fn_name, trapnr, signr, regs);
 tsk->thread.error_code = error_code;
 tsk->thread.trap_no = trapnr;

 if (user_mode(regs))
  force_sig(signr, tsk);

 die_if_no_fixup(str, regs, error_code);
}
