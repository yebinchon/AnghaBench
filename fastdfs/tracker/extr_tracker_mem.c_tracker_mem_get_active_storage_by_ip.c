
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int group_name; } ;
struct TYPE_6__ {char const* id; } ;
typedef TYPE_1__ FDFSStorageIdInfo ;
typedef int FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;


 TYPE_1__* fdfs_get_storage_id_by_ip (int ,char const*) ;
 int g_use_storage_id ;
 int * tracker_mem_get_active_storage_by_id (TYPE_2__*,char const*) ;

__attribute__((used)) static FDFSStorageDetail *tracker_mem_get_active_storage_by_ip( FDFSGroupInfo *pGroup, const char *ip_addr)

{
 FDFSStorageIdInfo *pStorageId;

 if (!g_use_storage_id)
 {
  return tracker_mem_get_active_storage_by_id(pGroup, ip_addr);
 }

 pStorageId = fdfs_get_storage_id_by_ip(pGroup->group_name, ip_addr);
 if (pStorageId == ((void*)0))
 {
  return ((void*)0);
 }
 return tracker_mem_get_active_storage_by_id(pGroup, pStorageId->id);
}
