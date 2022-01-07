
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lb_thread_lock ;
 int pthread_mutex_destroy (int *) ;
 int tracker_thread_lock ;
 int wait_for_work_threads_exit () ;

int tracker_service_destroy()
{
 wait_for_work_threads_exit();
 pthread_mutex_destroy(&tracker_thread_lock);
 pthread_mutex_destroy(&lb_thread_lock);

 return 0;
}
