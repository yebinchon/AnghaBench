
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_context {unsigned long r1; unsigned long msr; unsigned long r15; } ;
struct thread_info {struct cpu_context cpu_context; } ;
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long r1; int msr; unsigned long CURRENT_TASK; } ;


 unsigned long CLONE_SETTLS ;
 int MSR_BIP ;
 int MSR_EE ;
 int MSR_EIP ;
 int MSR_IE ;
 int MSR_UMS ;
 int MSR_VM ;
 int MSR_VMS ;
 unsigned long STATE_SAVE_ARG_SPACE ;
 unsigned long THREAD_SIZE ;
 scalar_t__ kernel_mode (struct pt_regs*) ;
 int memset (struct cpu_context*,int ,int) ;
 scalar_t__ ret_from_fork ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long unused,
  struct task_struct *p, struct pt_regs *regs)
{
 struct pt_regs *childregs = task_pt_regs(p);
 struct thread_info *ti = task_thread_info(p);

 *childregs = *regs;
 if (user_mode(regs))
  childregs->r1 = usp;
 else
  childregs->r1 = ((unsigned long) ti) + THREAD_SIZE;


 memset(&ti->cpu_context, 0, sizeof(struct cpu_context));
 ti->cpu_context.r1 = (unsigned long)childregs;
 ti->cpu_context.msr = (unsigned long)childregs->msr;
 ti->cpu_context.r15 = (unsigned long)ret_from_fork - 8;

 if (clone_flags & CLONE_SETTLS)
  ;

 return 0;
}
