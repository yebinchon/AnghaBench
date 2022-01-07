
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int bpt_nsaved; int * bpt_insn; int * bpt_addr; } ;


 int printk (char*,int) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 int write_int (struct task_struct*,int ,int ) ;

int
ptrace_cancel_bpt(struct task_struct * child)
{
 int i, nsaved = task_thread_info(child)->bpt_nsaved;

 task_thread_info(child)->bpt_nsaved = 0;

 if (nsaved > 2) {
  printk("ptrace_cancel_bpt: bogus nsaved: %d!\n", nsaved);
  nsaved = 2;
 }

 for (i = 0; i < nsaved; ++i) {
  write_int(child, task_thread_info(child)->bpt_addr[i],
     task_thread_info(child)->bpt_insn[i]);
 }
 return (nsaved != 0);
}
