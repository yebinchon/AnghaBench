
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_trap {int nr_trap; int * insn; int * addr; } ;
struct TYPE_2__ {struct debug_trap debug_trap; } ;
struct task_struct {TYPE_1__ thread; } ;


 int access_process_vm (struct task_struct*,int ,int *,int,int) ;

__attribute__((used)) static void
unregister_all_debug_traps(struct task_struct *child)
{
 struct debug_trap *p = &child->thread.debug_trap;
 int i;

 for (i = 0; i < p->nr_trap; i++)
  access_process_vm(child, p->addr[i], &p->insn[i], sizeof(p->insn[i]), 1);
 p->nr_trap = 0;
}
