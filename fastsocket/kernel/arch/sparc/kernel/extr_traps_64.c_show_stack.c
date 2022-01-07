
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {unsigned long ksp; } ;
struct task_struct {int dummy; } ;
struct sparc_stackf {unsigned long callers_pc; scalar_t__ fp; } ;
struct pt_regs {int tstate; unsigned long tpc; unsigned long* u_regs; } ;


 unsigned long STACK_BIAS ;
 int TSTATE_PRIV ;
 size_t UREG_I6 ;
 struct task_struct* current ;
 struct thread_info* current_thread_info () ;
 int flushw_all () ;
 scalar_t__ kstack_is_trap_frame (struct thread_info*,struct pt_regs*) ;
 int kstack_valid (struct thread_info*,unsigned long) ;
 int printk (char*,...) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

void show_stack(struct task_struct *tsk, unsigned long *_ksp)
{
 unsigned long fp, thread_base, ksp;
 struct thread_info *tp;
 int count = 0;

 ksp = (unsigned long) _ksp;
 if (!tsk)
  tsk = current;
 tp = task_thread_info(tsk);
 if (ksp == 0UL) {
  if (tsk == current)
   asm("mov %%fp, %0" : "=r" (ksp));
  else
   ksp = tp->ksp;
 }
 if (tp == current_thread_info())
  flushw_all();

 fp = ksp + STACK_BIAS;
 thread_base = (unsigned long) tp;

 printk("Call Trace:\n");
 do {
  struct sparc_stackf *sf;
  struct pt_regs *regs;
  unsigned long pc;

  if (!kstack_valid(tp, fp))
   break;
  sf = (struct sparc_stackf *) fp;
  regs = (struct pt_regs *) (sf + 1);

  if (kstack_is_trap_frame(tp, regs)) {
   if (!(regs->tstate & TSTATE_PRIV))
    break;
   pc = regs->tpc;
   fp = regs->u_regs[UREG_I6] + STACK_BIAS;
  } else {
   pc = sf->callers_pc;
   fp = (unsigned long)sf->fp + STACK_BIAS;
  }

  printk(" [%016lx] %pS\n", pc, (void *) pc);
 } while (++count < 16);
}
