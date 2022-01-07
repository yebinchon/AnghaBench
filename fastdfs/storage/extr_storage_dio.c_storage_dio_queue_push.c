
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct storage_dio_context {int queue; } ;
struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_3__ {int dio_thread_index; } ;
struct TYPE_4__ {int stage; TYPE_1__ file_context; } ;
typedef TYPE_1__ StorageFileContext ;
typedef TYPE_2__ StorageClientInfo ;


 int FDFS_STORAGE_STAGE_DIO_THREAD ;
 int add_to_deleted_list (struct fast_task_info*) ;
 int blocked_queue_push (int *,struct fast_task_info*) ;
 struct storage_dio_context* g_dio_contexts ;

int storage_dio_queue_push(struct fast_task_info *pTask)
{
    StorageClientInfo *pClientInfo;
 StorageFileContext *pFileContext;
 struct storage_dio_context *pContext;
 int result;

    pClientInfo = (StorageClientInfo *)pTask->arg;
 pFileContext = &(pClientInfo->file_context);
 pContext = g_dio_contexts + pFileContext->dio_thread_index;

 pClientInfo->stage |= FDFS_STORAGE_STAGE_DIO_THREAD;
 if ((result=blocked_queue_push(&(pContext->queue), pTask)) != 0)
 {
  add_to_deleted_list(pTask);
  return result;
 }

 return 0;
}
