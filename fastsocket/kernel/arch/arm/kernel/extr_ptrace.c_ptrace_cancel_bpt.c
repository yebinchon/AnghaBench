
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nsaved; int * bp; } ;
struct TYPE_4__ {TYPE_1__ debug; } ;
struct task_struct {TYPE_2__ thread; } ;


 int clear_breakpoint (struct task_struct*,int *) ;
 int printk (char*,int) ;

void ptrace_cancel_bpt(struct task_struct *child)
{
 int i, nsaved = child->thread.debug.nsaved;

 child->thread.debug.nsaved = 0;

 if (nsaved > 2) {
  printk("ptrace_cancel_bpt: bogus nsaved: %d!\n", nsaved);
  nsaved = 2;
 }

 for (i = 0; i < nsaved; i++)
  clear_breakpoint(child, &child->thread.debug.bp[i]);
}
