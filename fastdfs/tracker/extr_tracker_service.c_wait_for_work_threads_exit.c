
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_tracker_thread_count ;
 int sleep (int) ;

__attribute__((used)) static void wait_for_work_threads_exit()
{
 while (g_tracker_thread_count != 0)
 {
  sleep(1);
 }
}
