
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int profile_timer_exceptions_nb ;
 scalar_t__ register_die_notifier (int *) ;

__attribute__((used)) static int timer_start(void)
{
 if (register_die_notifier(&profile_timer_exceptions_nb))
  return 1;
 return 0;
}
