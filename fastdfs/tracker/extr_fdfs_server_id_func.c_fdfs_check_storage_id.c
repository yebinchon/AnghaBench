
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int group_name; } ;
typedef TYPE_1__ FDFSStorageIdInfo ;


 int EINVAL ;
 int ENOENT ;
 TYPE_1__* fdfs_get_storage_by_id (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

int fdfs_check_storage_id(const char *group_name, const char *id)
{
 FDFSStorageIdInfo *pFound;

 pFound = fdfs_get_storage_by_id(id);
 if (pFound == ((void*)0))
 {
  return ENOENT;
 }

 return strcmp(pFound->group_name, group_name) == 0 ? 0 : EINVAL;
}
