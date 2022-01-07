
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_3__ {int fd; int done_callback; int log_callback; int op; int dio_thread_index; } ;
struct TYPE_4__ {TYPE_1__ file_context; } ;
typedef TYPE_1__ StorageFileContext ;
typedef TYPE_2__ StorageClientInfo ;
typedef int FileDealDoneCallback ;
typedef int DeleteFileLogCallback ;


 int FDFS_STORAGE_FILE_OP_DELETE ;
 int STORAGE_STATUE_DEAL_FILE ;
 int storage_dio_get_thread_index (struct fast_task_info*,int const,int ) ;
 int storage_dio_queue_push (struct fast_task_info*) ;

__attribute__((used)) static int storage_do_delete_file(struct fast_task_info *pTask, DeleteFileLogCallback log_callback, FileDealDoneCallback done_callback, const int store_path_index)



{
 StorageClientInfo *pClientInfo;
 StorageFileContext *pFileContext;
 int result;

 pClientInfo = (StorageClientInfo *)pTask->arg;
 pFileContext = &(pClientInfo->file_context);

 pFileContext->fd = -1;
 pFileContext->op = FDFS_STORAGE_FILE_OP_DELETE;
 pFileContext->dio_thread_index = storage_dio_get_thread_index( pTask, store_path_index, pFileContext->op);

 pFileContext->log_callback = log_callback;
 pFileContext->done_callback = done_callback;

 if ((result=storage_dio_queue_push(pTask)) != 0)
 {
  return result;
 }

 return STORAGE_STATUE_DEAL_FILE;
}
