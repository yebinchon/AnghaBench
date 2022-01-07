
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int current ;
 int save_context_stack (struct stack_trace*,unsigned long,int ,int) ;

void save_stack_trace(struct stack_trace *trace)
{
 unsigned long sp;

 asm("mr %0,1" : "=r" (sp));

 save_context_stack(trace, sp, current, 1);
}
