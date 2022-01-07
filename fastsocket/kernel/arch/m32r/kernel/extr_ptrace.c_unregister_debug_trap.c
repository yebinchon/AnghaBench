
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_trap {int nr_trap; unsigned long* addr; unsigned long* insn; } ;
struct TYPE_2__ {struct debug_trap debug_trap; } ;
struct task_struct {TYPE_1__ thread; } ;



__attribute__((used)) static int
unregister_debug_trap(struct task_struct *child, unsigned long addr,
        unsigned long *code)
{
 struct debug_trap *p = &child->thread.debug_trap;
        int i;


 for (i = 0; i < p->nr_trap; i++) {
  if (p->addr[i] == addr)
   break;
 }
 if (i >= p->nr_trap) {



  return 0;
 }


 *code = p->insn[i];


 while (i < p->nr_trap - 1) {
  p->insn[i] = p->insn[i + 1];
  p->addr[i] = p->addr[i + 1];
  i++;
 }
 p->nr_trap--;
 return 1;
}
