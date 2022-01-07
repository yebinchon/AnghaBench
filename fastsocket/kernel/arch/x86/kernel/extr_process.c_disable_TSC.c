
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_NOTSC ;
 int hard_disable_TSC () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int test_and_set_thread_flag (int ) ;

void disable_TSC(void)
{
 preempt_disable();
 if (!test_and_set_thread_flag(TIF_NOTSC))




  hard_disable_TSC();
 preempt_enable();
}
