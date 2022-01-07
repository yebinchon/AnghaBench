
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_NOTSC ;
 int hard_enable_TSC () ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ test_and_clear_thread_flag (int ) ;

__attribute__((used)) static void enable_TSC(void)
{
 preempt_disable();
 if (test_and_clear_thread_flag(TIF_NOTSC))




  hard_enable_TSC();
 preempt_enable();
}
