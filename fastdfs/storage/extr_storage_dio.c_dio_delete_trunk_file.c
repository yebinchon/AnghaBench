
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_5__ {int trunk_info; } ;
struct TYPE_6__ {TYPE_1__ upload; } ;
struct TYPE_7__ {int (* done_callback ) (struct fast_task_info*,int) ;int (* log_callback ) (struct fast_task_info*,int) ;TYPE_2__ extra_info; int filename; } ;
struct TYPE_8__ {TYPE_3__ file_context; } ;
typedef TYPE_3__ StorageFileContext ;
typedef TYPE_4__ StorageClientInfo ;


 int stub1 (struct fast_task_info*,int) ;
 int stub2 (struct fast_task_info*,int) ;
 int trunk_file_delete (int ,int *) ;

int dio_delete_trunk_file(struct fast_task_info *pTask)
{
 StorageFileContext *pFileContext;
 int result;

 pFileContext = &(((StorageClientInfo *)pTask->arg)->file_context);

 if ((result=trunk_file_delete(pFileContext->filename, &(pFileContext->extra_info.upload.trunk_info))) != 0)

 {
  pFileContext->log_callback(pTask, result);
 }

 pFileContext->done_callback(pTask, result);
 return result;
}
