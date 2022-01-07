
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * last_sync_timestamps; int alloc_size; int * http_servers; int * all_servers; int * active_servers; int * sorted_servers; } ;
typedef TYPE_1__ FDFSGroupInfo ;


 int free (int *) ;
 scalar_t__ g_http_check_interval ;
 int tracker_free_last_sync_timestamps (int *,int ) ;
 int tracker_mem_free_storages (int *,int ) ;

__attribute__((used)) static void tracker_mem_free_group(FDFSGroupInfo *pGroup)
{
 if (pGroup->sorted_servers != ((void*)0))
 {
  free(pGroup->sorted_servers);
  pGroup->sorted_servers = ((void*)0);
 }

 if (pGroup->active_servers != ((void*)0))
 {
  free(pGroup->active_servers);
  pGroup->active_servers = ((void*)0);
 }

 if (pGroup->all_servers != ((void*)0))
 {
  tracker_mem_free_storages(pGroup->all_servers, pGroup->alloc_size);

  pGroup->all_servers = ((void*)0);
 }
 tracker_free_last_sync_timestamps(pGroup->last_sync_timestamps, pGroup->alloc_size);

 pGroup->last_sync_timestamps = ((void*)0);
}
