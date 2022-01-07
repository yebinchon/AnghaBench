
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long usp; } ;
struct task_struct {int pid; TYPE_1__ thread; } ;
struct TYPE_4__ {unsigned long erp; } ;


 unsigned int PT_EDA ;
 unsigned int PT_MAX ;
 unsigned int PT_PPC ;
 unsigned int PT_USP ;
 unsigned long get_pseudo_pc (struct task_struct*) ;
 int put_debugreg (int ,unsigned int,unsigned long) ;
 TYPE_2__* task_pt_regs (struct task_struct*) ;

int put_reg(struct task_struct *task, unsigned int regno, unsigned long data)
{
 if (regno <= PT_EDA)
  ((unsigned long *)task_pt_regs(task))[regno] = data;
 else if (regno == PT_USP)
  task->thread.usp = data;
 else if (regno == PT_PPC) {

  if (data != get_pseudo_pc(task))
   task_pt_regs(task)->erp = data;
 } else if (regno <= PT_MAX)
  return put_debugreg(task->pid, regno, data);
 else
  return -1;
 return 0;
}
