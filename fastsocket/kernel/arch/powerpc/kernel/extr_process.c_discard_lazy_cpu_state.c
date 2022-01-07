
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * current ;
 int * last_task_used_altivec ;
 int * last_task_used_math ;
 int * last_task_used_spe ;
 int * last_task_used_vsx ;
 int preempt_disable () ;
 int preempt_enable () ;

void discard_lazy_cpu_state(void)
{
 preempt_disable();
 if (last_task_used_math == current)
  last_task_used_math = ((void*)0);
 preempt_enable();
}
