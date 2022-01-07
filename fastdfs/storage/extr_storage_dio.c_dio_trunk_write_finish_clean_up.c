
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
struct TYPE_7__ {int fd; scalar_t__ offset; scalar_t__ start; scalar_t__ end; TYPE_2__ extra_info; int filename; } ;
struct TYPE_8__ {TYPE_3__ file_context; } ;
typedef TYPE_3__ StorageFileContext ;
typedef TYPE_4__ StorageClientInfo ;


 int close (int) ;
 int trunk_file_delete (int ,int *) ;

void dio_trunk_write_finish_clean_up(struct fast_task_info *pTask)
{
 StorageFileContext *pFileContext;
 int result;

 pFileContext = &(((StorageClientInfo *)pTask->arg)->file_context);
 if (pFileContext->fd > 0)
 {
  close(pFileContext->fd);
  pFileContext->fd = -1;




  if (pFileContext->offset > pFileContext->start && pFileContext->offset < pFileContext->end)

  {
   if ((result=trunk_file_delete(pFileContext->filename, &(pFileContext->extra_info.upload.trunk_info))) != 0)

   {
   }
  }
 }
}
