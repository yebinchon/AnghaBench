
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_groups ;
 int init_pthread_lock (int *) ;
 int mem_file_lock ;
 int mem_thread_lock ;
 int tracker_mem_init_groups (int *) ;
 int tracker_open_changlog_file () ;

int tracker_mem_init()
{
 int result;

 if ((result=init_pthread_lock(&mem_thread_lock)) != 0)
 {
  return result;
 }

 if ((result=init_pthread_lock(&mem_file_lock)) != 0)
 {
  return result;
 }

 if ((result=tracker_open_changlog_file()) != 0)
 {
  return result;
 }

 return tracker_mem_init_groups(&g_groups);
}
