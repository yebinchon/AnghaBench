
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;


 unsigned long EIO ;
 int PT_MSR ;
 unsigned long get_user_msr (struct task_struct*) ;

unsigned long ptrace_get_reg(struct task_struct *task, int regno)
{
 if (task->thread.regs == ((void*)0))
  return -EIO;

 if (regno == PT_MSR)
  return get_user_msr(task);

 if (regno < (sizeof(struct pt_regs) / sizeof(unsigned long)))
  return ((unsigned long *)task->thread.regs)[regno];

 return -EIO;
}
