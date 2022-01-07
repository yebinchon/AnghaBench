
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpu_state; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;
typedef int elf_fpregset_t ;


 struct task_struct* current ;
 int is_using_fpu (struct task_struct*) ;
 int memcpy (int *,int *,int) ;
 int unlazy_fpu (struct task_struct*) ;

int dump_fpu(struct pt_regs *regs, elf_fpregset_t *fpreg)
{
 struct task_struct *tsk = current;
 int fpvalid;

 fpvalid = is_using_fpu(tsk);
 if (fpvalid) {
  unlazy_fpu(tsk);
  memcpy(fpreg, &tsk->thread.fpu_state, sizeof(*fpreg));
 }

 return fpvalid;
}
