
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_regset {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct task_struct {TYPE_1__ thread; } ;


 int IA64_THREAD_FPH_VALID ;

__attribute__((used)) static int
fpregs_active(struct task_struct *target, const struct user_regset *regset)
{
 return (target->thread.flags & IA64_THREAD_FPH_VALID) ? 128 : 32;
}
