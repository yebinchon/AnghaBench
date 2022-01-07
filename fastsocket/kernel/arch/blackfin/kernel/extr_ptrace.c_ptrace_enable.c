
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_SYSCFG ;
 unsigned long TRACE_BITS ;
 unsigned long get_reg (struct task_struct*,int ) ;
 int put_reg (struct task_struct*,int ,unsigned long) ;

void ptrace_enable(struct task_struct *child)
{
 unsigned long tmp;
 tmp = get_reg(child, PT_SYSCFG) | (TRACE_BITS);
 put_reg(child, PT_SYSCFG, tmp);
}
