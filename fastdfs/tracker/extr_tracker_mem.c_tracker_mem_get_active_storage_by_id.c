
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int target_storage ;
struct TYPE_8__ {int active_count; int active_servers; } ;
struct TYPE_7__ {int id; } ;
typedef TYPE_1__ FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;


 scalar_t__ bsearch (TYPE_1__**,int ,int ,int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int strcpy (int ,char const*) ;
 int tracker_mem_cmp_by_storage_id ;

__attribute__((used)) static FDFSStorageDetail *tracker_mem_get_active_storage_by_id( FDFSGroupInfo *pGroup, const char *id)

{
 FDFSStorageDetail target_storage;
 FDFSStorageDetail *pTargetStorage;
 FDFSStorageDetail **ppStorageServer;

 if (id == ((void*)0))
 {
  return ((void*)0);
 }

 memset(&target_storage, 0, sizeof(target_storage));
 strcpy(target_storage.id, id);
 pTargetStorage = &target_storage;
 ppStorageServer = (FDFSStorageDetail **)bsearch(&pTargetStorage, pGroup->active_servers, pGroup->active_count, sizeof(FDFSStorageDetail *), tracker_mem_cmp_by_storage_id);




 if (ppStorageServer != ((void*)0))
 {
  return *ppStorageServer;
 }
 else
 {
  return ((void*)0);
 }
}
