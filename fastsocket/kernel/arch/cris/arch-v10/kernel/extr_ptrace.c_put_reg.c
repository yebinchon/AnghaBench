
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned int PT_MAX ;
 unsigned int PT_USP ;
 scalar_t__ task_pt_regs (struct task_struct*) ;

inline int put_reg(struct task_struct *task, unsigned int regno,
     unsigned long data)
{
 if (regno == PT_USP)
  task->thread.usp = data;
 else if (regno < PT_MAX)
  ((unsigned long *)task_pt_regs(task))[regno] = data;
 else
  return -1;
 return 0;
}
