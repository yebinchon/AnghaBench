
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_storage_thread_lock ;
 int path_index_thread_lock ;
 int pthread_mutex_destroy (int *) ;
 int stat_count_thread_lock ;

void storage_service_destroy()
{
 pthread_mutex_destroy(&g_storage_thread_lock);
 pthread_mutex_destroy(&path_index_thread_lock);
 pthread_mutex_destroy(&stat_count_thread_lock);
}
