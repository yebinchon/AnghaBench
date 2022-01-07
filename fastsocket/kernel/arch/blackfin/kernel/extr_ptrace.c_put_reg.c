
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {unsigned long retx; unsigned long pc; unsigned long usp; } ;





 int THREAD_SIZE ;
 scalar_t__ task_stack_page (struct task_struct*) ;

__attribute__((used)) static inline int
put_reg(struct task_struct *task, int regno, unsigned long data)
{
 char *reg_ptr;

 struct pt_regs *regs =
     (struct pt_regs *)((unsigned long)task_stack_page(task) +
          (THREAD_SIZE - sizeof(struct pt_regs)));
 reg_ptr = (char *)regs;

 switch (regno) {
 case 130:




  regs->retx = data;
  regs->pc = data;
  break;
 case 129:
  break;
 case 128:
  regs->usp = data;
  task->thread.usp = data;
  break;
 default:
  if (regno <= 216)
   *(long *)(reg_ptr + regno) = data;
 }
 return 0;
}
