
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; } ;
struct task_struct {int pid; TYPE_1__ thread; } ;


 unsigned int PT_EDA ;
 unsigned int PT_MAX ;
 unsigned int PT_PPC ;
 unsigned int PT_USP ;
 unsigned long get_debugreg (int ,unsigned int) ;
 unsigned long get_pseudo_pc (struct task_struct*) ;
 scalar_t__ task_pt_regs (struct task_struct*) ;

long get_reg(struct task_struct *task, unsigned int regno)
{



 unsigned long ret;

 if (regno <= PT_EDA)
  ret = ((unsigned long *)task_pt_regs(task))[regno];
 else if (regno == PT_USP)
  ret = task->thread.usp;
 else if (regno == PT_PPC)
  ret = get_pseudo_pc(task);
 else if (regno <= PT_MAX)
  ret = get_debugreg(task->pid, regno);
 else
  ret = 0;

 return ret;
}
