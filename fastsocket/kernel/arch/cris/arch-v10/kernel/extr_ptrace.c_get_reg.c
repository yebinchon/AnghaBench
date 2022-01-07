
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long usp; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned int PT_MAX ;
 unsigned int PT_USP ;
 scalar_t__ task_pt_regs (struct task_struct*) ;

inline long get_reg(struct task_struct *task, unsigned int regno)
{




 if (regno == PT_USP)
  return task->thread.usp;
 else if (regno < PT_MAX)
  return ((unsigned long *)task_pt_regs(task))[regno];
 else
  return 0;
}
