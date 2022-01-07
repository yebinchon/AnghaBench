
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {scalar_t__ leader; } ;


 struct task_struct* current ;
 int disassociate_ctty (int ) ;
 int lock_kernel () ;
 int proc_clear_tty (struct task_struct*) ;
 int unlock_kernel () ;

void no_tty(void)
{
 struct task_struct *tsk = current;
 lock_kernel();
 if (tsk->signal->leader)
  disassociate_ctty(0);
 unlock_kernel();
 proc_clear_tty(tsk);
}
