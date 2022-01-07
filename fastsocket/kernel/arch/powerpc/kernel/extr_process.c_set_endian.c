
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pt_regs* regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int msr; } ;


 int CPU_FTR_PPC_LE ;
 int CPU_FTR_REAL_LE ;
 int EINVAL ;
 int MSR_LE ;
 unsigned int PR_ENDIAN_BIG ;
 unsigned int PR_ENDIAN_LITTLE ;
 unsigned int PR_ENDIAN_PPC_LITTLE ;
 int cpu_has_feature (int ) ;

int set_endian(struct task_struct *tsk, unsigned int val)
{
 struct pt_regs *regs = tsk->thread.regs;

 if ((val == PR_ENDIAN_LITTLE && !cpu_has_feature(CPU_FTR_REAL_LE)) ||
     (val == PR_ENDIAN_PPC_LITTLE && !cpu_has_feature(CPU_FTR_PPC_LE)))
  return -EINVAL;

 if (regs == ((void*)0))
  return -EINVAL;

 if (val == PR_ENDIAN_BIG)
  regs->msr &= ~MSR_LE;
 else if (val == PR_ENDIAN_LITTLE || val == PR_ENDIAN_PPC_LITTLE)
  regs->msr |= MSR_LE;
 else
  return -EINVAL;

 return 0;
}
