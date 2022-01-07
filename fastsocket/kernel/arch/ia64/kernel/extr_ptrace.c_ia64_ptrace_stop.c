
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_RESTORE_RSE ;
 int current ;
 int do_sync_rbs ;
 int ia64_sync_user_rbs ;
 int set_notify_resume (int ) ;
 scalar_t__ test_and_set_tsk_thread_flag (int ,int ) ;
 int unw_init_running (int ,int ) ;

void ia64_ptrace_stop(void)
{
 if (test_and_set_tsk_thread_flag(current, TIF_RESTORE_RSE))
  return;
 set_notify_resume(current);
 unw_init_running(do_sync_rbs, ia64_sync_user_rbs);
}
