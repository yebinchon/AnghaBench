
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long a3; unsigned long sp; unsigned long pc; unsigned long wchan; unsigned long usp; struct pt_regs* __frame; struct pt_regs* uregs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct pt_regs {unsigned long sp; unsigned long e2; struct pt_regs* next; int epsw; } ;
struct TYPE_8__ {unsigned long d3; } ;
struct TYPE_5__ {struct pt_regs* uregs; } ;
struct TYPE_7__ {TYPE_1__ thread; } ;


 unsigned long CLONE_SETTLS ;
 int EPSW_FE ;
 unsigned long THREAD_SIZE ;
 TYPE_4__* __frame ;
 TYPE_3__* current ;
 scalar_t__ ret_from_fork ;
 scalar_t__ task_stack_page (struct task_struct*) ;

int copy_thread(unsigned long clone_flags,
  unsigned long c_usp, unsigned long ustk_size,
  struct task_struct *p, struct pt_regs *kregs)
{
 struct pt_regs *c_uregs, *c_kregs, *uregs;
 unsigned long c_ksp;

 uregs = current->thread.uregs;

 c_ksp = (unsigned long) task_stack_page(p) + THREAD_SIZE;


 c_ksp -= sizeof(struct pt_regs);
 c_uregs = (struct pt_regs *) c_ksp;

 p->thread.uregs = c_uregs;
 *c_uregs = *uregs;
 c_uregs->sp = c_usp;
 c_uregs->epsw &= ~EPSW_FE;

 c_ksp -= 12;


 if (clone_flags & CLONE_SETTLS)
  c_uregs->e2 = __frame->d3;


 c_kregs = c_uregs;
 if (kregs != uregs) {
  c_ksp -= sizeof(struct pt_regs);
  c_kregs = (struct pt_regs *) c_ksp;
  *c_kregs = *kregs;
  c_kregs->sp = c_usp;
  c_kregs->next = c_uregs;




  c_ksp -= 12;
 }


 p->thread.__frame = c_kregs;
 p->thread.a3 = (unsigned long) c_kregs;
 p->thread.sp = c_ksp;
 p->thread.pc = (unsigned long) ret_from_fork;
 p->thread.wchan = (unsigned long) ret_from_fork;
 p->thread.usp = c_usp;

 return 0;
}
