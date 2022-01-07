
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc_size; int store_path_count; int ** all_servers; } ;
typedef int FDFSStorageDetail ;
typedef TYPE_1__ FDFSGroupInfo ;


 int tracker_realloc_storage_path_mbs (int *,int,int const) ;

__attribute__((used)) static int tracker_realloc_group_path_mbs(FDFSGroupInfo *pGroup, const int new_store_path_count)

{
 FDFSStorageDetail **ppStorage;
 FDFSStorageDetail **ppEnd;
 int result;

 ppEnd = pGroup->all_servers + pGroup->alloc_size;
 for (ppStorage=pGroup->all_servers; ppStorage<ppEnd; ppStorage++)
 {
  if ((result=tracker_realloc_storage_path_mbs(*ppStorage, pGroup->store_path_count, new_store_path_count)) != 0)

  {
   return result;
  }
 }

 pGroup->store_path_count = new_store_path_count;

 return 0;
}
