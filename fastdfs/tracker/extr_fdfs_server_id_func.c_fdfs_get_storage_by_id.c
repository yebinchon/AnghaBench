
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int count; int ids; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_1__ FDFSStorageIdInfo ;


 scalar_t__ bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int fdfs_cmp_server_id ;
 TYPE_3__ g_storage_ids_by_id ;
 int memset (TYPE_1__*,int ,int) ;
 int snprintf (int ,int,char*,char const*) ;

FDFSStorageIdInfo *fdfs_get_storage_by_id(const char *id)
{
 FDFSStorageIdInfo target;

 memset(&target, 0, sizeof(FDFSStorageIdInfo));
 snprintf(target.id, sizeof(target.id), "%s", id);
 return (FDFSStorageIdInfo *)bsearch(&target,
            g_storage_ids_by_id.ids, g_storage_ids_by_id.count,
            sizeof(FDFSStorageIdInfo), fdfs_cmp_server_id);
}
