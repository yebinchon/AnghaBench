
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_trap {scalar_t__* insn; scalar_t__* addr; scalar_t__ nr_trap; } ;
struct TYPE_2__ {struct debug_trap debug_trap; } ;
struct task_struct {TYPE_1__ thread; } ;


 int MAX_TRAPS ;

void
init_debug_traps(struct task_struct *child)
{
 struct debug_trap *p = &child->thread.debug_trap;
 int i;
 p->nr_trap = 0;
 for (i = 0; i < MAX_TRAPS; i++) {
  p->addr[i] = 0;
  p->insn[i] = 0;
 }
}
