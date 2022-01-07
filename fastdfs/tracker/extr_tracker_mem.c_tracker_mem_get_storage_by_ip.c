
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int group_name; } ;
struct TYPE_6__ {char* id; } ;
typedef TYPE_1__ FDFSStorageIdInfo ;
typedef int FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;


 TYPE_1__* fdfs_get_storage_id_by_ip (int ,char const*) ;
 scalar_t__ g_use_storage_id ;
 int * tracker_mem_get_storage (TYPE_2__*,char const*) ;

FDFSStorageDetail *tracker_mem_get_storage_by_ip(FDFSGroupInfo *pGroup, const char *ip_addr)

{
 const char *storage_id;

 if (g_use_storage_id)
 {
  FDFSStorageIdInfo *pStorageIdInfo;
  pStorageIdInfo = fdfs_get_storage_id_by_ip( pGroup->group_name, ip_addr);

  if (pStorageIdInfo == ((void*)0))
  {
   return ((void*)0);
  }
  storage_id = pStorageIdInfo->id;
 }
 else
 {
  storage_id = ip_addr;
 }

 return tracker_mem_get_storage(pGroup, storage_id);
}
