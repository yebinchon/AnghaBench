
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link; } ;
typedef TYPE_1__ StorageBinLogReader ;


 int fc_list_del_init (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sync_thread_lock ;

void storage_reader_remove_from_list(StorageBinLogReader *pReader)
{
 pthread_mutex_lock(&sync_thread_lock);
    fc_list_del_init(&pReader->link);
 pthread_mutex_unlock(&sync_thread_lock);
}
