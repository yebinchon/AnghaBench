
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {long* uregs; } ;


 TYPE_1__* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static inline long get_user_reg(struct task_struct *task, int offset)
{
 return task_pt_regs(task)->uregs[offset];
}
