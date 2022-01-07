
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; int maps; } ;
struct TYPE_4__ {char const* group_name; char const* ip_addr; int * idInfo; scalar_t__ port; } ;
typedef TYPE_1__ FDFSStorageIdMap ;
typedef int FDFSStorageIdInfo ;


 scalar_t__ bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int fdfs_cmp_group_name_and_ip ;
 TYPE_2__ g_storage_ids_by_ip ;

FDFSStorageIdInfo *fdfs_get_storage_id_by_ip(const char *group_name,
  const char *pIpAddr)
{
 FDFSStorageIdMap target;
 FDFSStorageIdMap *pFound;

 target.group_name = group_name;
 target.ip_addr = pIpAddr;
 target.port = 0;
    target.idInfo = ((void*)0);
 pFound = (FDFSStorageIdMap *)bsearch(&target,
            g_storage_ids_by_ip.maps, g_storage_ids_by_ip.count,
            sizeof(FDFSStorageIdMap), fdfs_cmp_group_name_and_ip);
 if (pFound == ((void*)0))
 {
  return ((void*)0);
 }
 else
 {
  return pFound->idInfo;
 }
}
