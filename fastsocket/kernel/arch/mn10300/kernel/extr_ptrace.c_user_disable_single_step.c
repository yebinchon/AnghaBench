
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int epsw; } ;
struct user {TYPE_1__ regs; } ;
struct task_struct {int dummy; } ;


 long EPSW_T ;
 long get_stack_long (struct task_struct*,unsigned long) ;
 int put_stack_long (struct task_struct*,unsigned long,long) ;

void user_disable_single_step(struct task_struct *child)
{

 struct user *dummy = ((void*)0);
 long tmp;

 tmp = get_stack_long(child, (unsigned long) &dummy->regs.epsw);
 tmp &= ~EPSW_T;
 put_stack_long(child, (unsigned long) &dummy->regs.epsw, tmp);

}
