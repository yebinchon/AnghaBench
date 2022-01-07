
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_SIGPENDING ;
 int current ;
 int do_signal () ;
 scalar_t__ need_resched () ;
 int schedule () ;
 scalar_t__ test_tsk_thread_flag (int ,int ) ;

void interrupt_end(void)
{
 if (need_resched())
  schedule();
 if (test_tsk_thread_flag(current, TIF_SIGPENDING))
  do_signal();
}
