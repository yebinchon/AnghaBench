
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct TYPE_3__ {unsigned long ksp; unsigned long ksp_vsid; scalar_t__ ksp_limit; struct pt_regs* regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int msr; unsigned long* gpr; unsigned long nip; } ;
struct TYPE_4__ {unsigned long sllp; } ;


 int CHECK_FULL_REGS (struct pt_regs*) ;
 unsigned long CLONE_SETTLS ;
 int CPU_FTR_1T_SEGMENT ;
 int CPU_FTR_SLB ;
 int MMU_SEGSIZE_1T ;
 int MMU_SEGSIZE_256M ;
 int MSR_PR ;
 unsigned long SLB_VSID_KERNEL ;
 unsigned long SLB_VSID_SHIFT ;
 unsigned long SLB_VSID_SHIFT_1T ;
 scalar_t__ STACK_FRAME_OVERHEAD ;
 unsigned long THREAD_SIZE ;
 int TIF_32BIT ;
 scalar_t__ _ALIGN_UP (int,int) ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 unsigned long get_kernel_vsid (unsigned long,int ) ;
 size_t mmu_linear_psize ;
 TYPE_2__* mmu_psize_defs ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 int test_thread_flag (int ) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long unused, struct task_struct *p,
  struct pt_regs *regs)
{
 struct pt_regs *childregs, *kregs;
 extern void ret_from_fork(void);
 unsigned long sp = (unsigned long)task_stack_page(p) + THREAD_SIZE;

 CHECK_FULL_REGS(regs);

 sp -= sizeof(struct pt_regs);
 childregs = (struct pt_regs *) sp;
 *childregs = *regs;
 if ((childregs->msr & MSR_PR) == 0) {

  childregs->gpr[1] = sp + sizeof(struct pt_regs);



  clear_tsk_thread_flag(p, TIF_32BIT);

  p->thread.regs = ((void*)0);
 } else {
  childregs->gpr[1] = usp;
  p->thread.regs = childregs;
  if (clone_flags & CLONE_SETTLS) {





    childregs->gpr[2] = childregs->gpr[6];
  }
 }
 childregs->gpr[3] = 0;
 sp -= STACK_FRAME_OVERHEAD;
 sp -= sizeof(struct pt_regs);
 kregs = (struct pt_regs *) sp;
 sp -= STACK_FRAME_OVERHEAD;
 p->thread.ksp = sp;
 p->thread.ksp_limit = (unsigned long)task_stack_page(p) +
    _ALIGN_UP(sizeof(struct thread_info), 16);
 kregs->nip = (unsigned long)ret_from_fork;


 return 0;
}
