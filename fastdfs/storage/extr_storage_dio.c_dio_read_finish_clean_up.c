
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_3__ {int fd; } ;
struct TYPE_4__ {TYPE_1__ file_context; } ;
typedef TYPE_1__ StorageFileContext ;
typedef TYPE_2__ StorageClientInfo ;


 int close (int) ;

void dio_read_finish_clean_up(struct fast_task_info *pTask)
{
 StorageFileContext *pFileContext;

 pFileContext = &(((StorageClientInfo *)pTask->arg)->file_context);
 if (pFileContext->fd > 0)
 {
  close(pFileContext->fd);
  pFileContext->fd = -1;
 }
}
