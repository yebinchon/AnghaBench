
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int profile_timer_exceptions_nb ;
 int synchronize_sched () ;
 int unregister_die_notifier (int *) ;

__attribute__((used)) static void timer_stop(void)
{
 unregister_die_notifier(&profile_timer_exceptions_nb);
 synchronize_sched();
}
