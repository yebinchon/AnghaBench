
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int* gr; unsigned long ksp; unsigned long kpc; unsigned long cr27; } ;
struct TYPE_2__ {struct pt_regs regs; } ;
struct task_struct {scalar_t__ personality; TYPE_1__ thread; } ;


 int BUG () ;
 unsigned long CLONE_SETTLS ;
 scalar_t__ PER_HPUX ;
 int THREAD_SIZE ;
 unsigned long THREAD_SZ_ALGN ;
 void* task_stack_page (struct task_struct*) ;

int
copy_thread(unsigned long clone_flags, unsigned long usp,
     unsigned long unused,
     struct task_struct * p, struct pt_regs * pregs)
{
 struct pt_regs * cregs = &(p->thread.regs);
 void *stack = task_stack_page(p);




 extern void * const ret_from_kernel_thread;
 extern void * const child_return;




 *cregs = *pregs;




 cregs->gr[28] = 0;
 if (usp == 1) {

  cregs->ksp = (unsigned long)stack + THREAD_SZ_ALGN;



  cregs->kpc = (unsigned long) &ret_from_kernel_thread;







  cregs->gr[26] = pregs->gr[26];
  cregs->gr[25] = pregs->gr[25];
 } else {







  cregs->ksp = (unsigned long)stack
   + (pregs->gr[21] & (THREAD_SIZE - 1));
  cregs->gr[30] = usp;
  if (p->personality == PER_HPUX) {



   BUG();

  } else {
   cregs->kpc = (unsigned long) &child_return;
  }

  if (clone_flags & CLONE_SETTLS)
    cregs->cr27 = pregs->gr[23];

 }

 return 0;
}
