
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int file_type; int trunk_info; } ;
struct TYPE_6__ {TYPE_1__ upload; } ;
struct TYPE_7__ {int filename; TYPE_2__ extra_info; } ;
typedef TYPE_3__ StorageFileContext ;


 int ENOENT ;
 int _FILE_TYPE_TRUNK ;
 scalar_t__ errno ;
 int trunk_file_delete (int ,int *) ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static int storage_delete_file_auto(StorageFileContext *pFileContext)
{
 if (pFileContext->extra_info.upload.file_type & _FILE_TYPE_TRUNK)
 {
  return trunk_file_delete(pFileContext->filename,
                        &(pFileContext->extra_info.upload.trunk_info));
 }
 else
 {
  if (unlink(pFileContext->filename) == 0)
  {
   return 0;
  }
  else
  {
   return errno != 0 ? errno : ENOENT;
  }
 }
}
