
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_fpu_soft_struct {int dummy; } ;
struct TYPE_3__ {struct sh_fpu_soft_struct soft; } ;
struct TYPE_4__ {TYPE_1__ fpu; } ;
struct task_struct {TYPE_2__ thread; } ;
struct pt_regs {int dummy; } ;


 int TIF_USEDFPU ;
 struct task_struct* current ;
 int fpu_emulate (unsigned short,struct sh_fpu_soft_struct*,struct pt_regs*) ;
 int fpu_init (struct sh_fpu_soft_struct*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;

int do_fpu_inst(unsigned short inst, struct pt_regs *regs)
{
 struct task_struct *tsk = current;
 struct sh_fpu_soft_struct *fpu = &(tsk->thread.fpu.soft);

 if (!test_tsk_thread_flag(tsk, TIF_USEDFPU)) {

  fpu_init(fpu);
  set_tsk_thread_flag(tsk, TIF_USEDFPU);
 }

 return fpu_emulate(inst, fpu, regs);
}
