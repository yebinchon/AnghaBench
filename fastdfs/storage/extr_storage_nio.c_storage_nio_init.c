
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct storage_nio_thread_data {int thread_data; } ;
struct TYPE_3__ {int fd; } ;
struct fast_task_info {TYPE_1__ event; scalar_t__ arg; } ;
struct TYPE_4__ {int nio_thread_index; int stage; } ;
typedef TYPE_2__ StorageClientInfo ;


 int FDFS_STORAGE_STAGE_NIO_RECV ;
 int IOEVENT_READ ;
 int client_sock_read ;
 int g_fdfs_network_timeout ;
 struct storage_nio_thread_data* g_nio_thread_data ;
 int ioevent_set (struct fast_task_info*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static int storage_nio_init(struct fast_task_info *pTask)
{
 StorageClientInfo *pClientInfo;
 struct storage_nio_thread_data *pThreadData;

 pClientInfo = (StorageClientInfo *)pTask->arg;
 pThreadData = g_nio_thread_data + pClientInfo->nio_thread_index;

 pClientInfo->stage = FDFS_STORAGE_STAGE_NIO_RECV;
 return ioevent_set(pTask, &pThreadData->thread_data,
   pTask->event.fd, IOEVENT_READ, client_sock_read,
   g_fdfs_network_timeout);
}
