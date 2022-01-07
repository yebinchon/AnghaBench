
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {long* uregs; } ;


 int EINVAL ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 scalar_t__ valid_user_regs (struct pt_regs*) ;

__attribute__((used)) static inline int
put_user_reg(struct task_struct *task, int offset, long data)
{
 struct pt_regs newregs, *regs = task_pt_regs(task);
 int ret = -EINVAL;

 newregs = *regs;
 newregs.uregs[offset] = data;

 if (valid_user_regs(&newregs)) {
  regs->uregs[offset] = data;
  ret = 0;
 }

 return ret;
}
