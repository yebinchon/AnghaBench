
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long pc; } ;
struct thread_info {int tp_value; TYPE_1__ cpu_context; } ;
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long ARM_sp; int ARM_r3; scalar_t__ ARM_r0; } ;
struct cpu_context_save {int dummy; } ;


 unsigned long CLONE_SETTLS ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ ret_from_fork ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

int
copy_thread(unsigned long clone_flags, unsigned long stack_start,
     unsigned long stk_sz, struct task_struct *p, struct pt_regs *regs)
{
 struct thread_info *thread = task_thread_info(p);
 struct pt_regs *childregs = task_pt_regs(p);

 *childregs = *regs;
 childregs->ARM_r0 = 0;
 childregs->ARM_sp = stack_start;

 memset(&thread->cpu_context, 0, sizeof(struct cpu_context_save));
 thread->cpu_context.sp = (unsigned long)childregs;
 thread->cpu_context.pc = (unsigned long)ret_from_fork;

 if (clone_flags & CLONE_SETTLS)
  thread->tp_value = regs->ARM_r3;

 return 0;
}
