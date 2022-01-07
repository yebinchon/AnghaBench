
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; scalar_t__ esp0; } ;
struct task_struct {TYPE_1__ thread; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int PT_USP ;
 scalar_t__* regoff ;

__attribute__((used)) static inline long get_reg(struct task_struct *task, int regno)
{
 unsigned long *addr;

 if (regno == PT_USP)
  addr = &task->thread.usp;
 else if (regno < ARRAY_SIZE(regoff))
  addr = (unsigned long *)(task->thread.esp0 + regoff[regno]);
 else
  return 0;
 return *addr;
}
