
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int ar_bspstore; } ;


 unsigned long ia64_get_user_rbs_end (struct task_struct*,struct pt_regs*,int *) ;
 int on_kernel_rbs (unsigned long,int ,unsigned long) ;
 scalar_t__ ptrace_check_attach (struct task_struct*,int ) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static inline int
thread_matches (struct task_struct *thread, unsigned long addr)
{
 unsigned long thread_rbs_end;
 struct pt_regs *thread_regs;

 if (ptrace_check_attach(thread, 0) < 0)
  return 0;

 thread_regs = task_pt_regs(thread);
 thread_rbs_end = ia64_get_user_rbs_end(thread, thread_regs, ((void*)0));
 if (!on_kernel_rbs(addr, thread_regs->ar_bspstore, thread_rbs_end))
  return 0;

 return 1;
}
