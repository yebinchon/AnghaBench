
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long dabr; int dbcr0; TYPE_1__* regs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {int msr; } ;


 unsigned long DABR_TRANSLATION ;
 int DBCR0_IDM ;
 int DBSR_DAC1R ;
 int DBSR_DAC1W ;
 int EINVAL ;
 int EIO ;
 int MSR_DE ;
 unsigned long TASK_SIZE ;

int ptrace_set_debugreg(struct task_struct *task, unsigned long addr,
          unsigned long data)
{




 if (addr > 0)
  return -EINVAL;


 if ((data & ~0x7UL) >= TASK_SIZE)
  return -EIO;
 if (data && !(data & DABR_TRANSLATION))
  return -EIO;


 task->thread.dabr = data;
 return 0;
}
