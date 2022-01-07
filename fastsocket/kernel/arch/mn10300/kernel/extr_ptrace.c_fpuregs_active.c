
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset {int n; } ;
struct task_struct {int dummy; } ;


 scalar_t__ is_using_fpu (struct task_struct*) ;

__attribute__((used)) static int fpuregs_active(struct task_struct *target,
     const struct user_regset *regset)
{
 return is_using_fpu(target) ? regset->n : 0;
}
