
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_3__ {int filename; } ;
struct TYPE_4__ {TYPE_1__ file_context; } ;
typedef TYPE_1__ StorageFileContext ;
typedef TYPE_2__ StorageClientInfo ;


 int trunk_check_and_init_file (int ) ;

int dio_check_trunk_file_when_sync(struct fast_task_info *pTask)
{
 StorageFileContext *pFileContext;

 pFileContext = &(((StorageClientInfo *)pTask->arg)->file_context);
 return trunk_check_and_init_file(pFileContext->filename);
}
