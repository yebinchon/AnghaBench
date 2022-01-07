
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {unsigned long tp_value; int addr_limit; } ;
struct TYPE_2__ {unsigned long reg29; unsigned long reg31; int cp0_status; } ;
struct task_struct {unsigned long pid; TYPE_1__ thread; int * clear_child_tid; int set_child_tid; } ;
struct pt_regs {unsigned long* regs; int cp0_status; int cp0_tcstatus; } ;


 unsigned long CLONE_SETTLS ;
 int KERNEL_DS ;
 int ST0_CU0 ;
 int ST0_CU1 ;
 int ST0_CU2 ;
 unsigned long THREAD_SIZE ;
 int TIF_FPUBOUND ;
 int TIF_USEDFPU ;
 int USER_DS ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ cpu_has_dsp ;
 scalar_t__ is_fpu_owner () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int read_c0_status () ;
 scalar_t__ ret_from_fork ;
 int save_dsp (struct task_struct*) ;
 int save_fp (struct task_struct*) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
 unsigned long unused, struct task_struct *p, struct pt_regs *regs)
{
 struct thread_info *ti = task_thread_info(p);
 struct pt_regs *childregs;
 unsigned long childksp;
 p->set_child_tid = p->clear_child_tid = ((void*)0);

 childksp = (unsigned long)task_stack_page(p) + THREAD_SIZE - 32;

 preempt_disable();

 if (is_fpu_owner())
  save_fp(p);

 if (cpu_has_dsp)
  save_dsp(p);

 preempt_enable();


 childregs = (struct pt_regs *) childksp - 1;

 childksp = (unsigned long) childregs;
 *childregs = *regs;
 childregs->regs[7] = 0;

 childregs->regs[2] = 0;
 regs->regs[2] = p->pid;

 if (childregs->cp0_status & ST0_CU0) {
  childregs->regs[28] = (unsigned long) ti;
  childregs->regs[29] = childksp;
  ti->addr_limit = KERNEL_DS;
 } else {
  childregs->regs[29] = usp;
  ti->addr_limit = USER_DS;
 }
 p->thread.reg29 = (unsigned long) childregs;
 p->thread.reg31 = (unsigned long) ret_from_fork;





 p->thread.cp0_status = read_c0_status() & ~(ST0_CU2|ST0_CU1);
 childregs->cp0_status &= ~(ST0_CU2|ST0_CU1);
 clear_tsk_thread_flag(p, TIF_USEDFPU);





 if (clone_flags & CLONE_SETTLS)
  ti->tp_value = regs->regs[7];

 return 0;
}
