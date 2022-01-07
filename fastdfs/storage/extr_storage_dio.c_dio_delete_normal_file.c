
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_3__ {int (* done_callback ) (struct fast_task_info*,int) ;int (* log_callback ) (struct fast_task_info*,int) ;int filename; } ;
struct TYPE_4__ {TYPE_1__ file_context; } ;
typedef TYPE_1__ StorageFileContext ;
typedef TYPE_2__ StorageClientInfo ;


 int EACCES ;
 int errno ;
 int stub1 (struct fast_task_info*,int) ;
 int stub2 (struct fast_task_info*,int) ;
 scalar_t__ unlink (int ) ;

int dio_delete_normal_file(struct fast_task_info *pTask)
{
 StorageFileContext *pFileContext;
 int result;

 pFileContext = &(((StorageClientInfo *)pTask->arg)->file_context);
 if (unlink(pFileContext->filename) != 0)
 {
  result = errno != 0 ? errno : EACCES;
  pFileContext->log_callback(pTask, result);
 }
 else
 {
  result = 0;
 }

 pFileContext->done_callback(pTask, result);
 return result;
}
