
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ active_count; scalar_t__ free_mb; int total_mb; TYPE_1__** active_servers; } ;
struct TYPE_4__ {scalar_t__ free_mb; int total_mb; } ;
typedef TYPE_1__ FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;



__attribute__((used)) static void tracker_find_min_free_space(FDFSGroupInfo *pGroup)
{
 FDFSStorageDetail **ppServerEnd;
 FDFSStorageDetail **ppServer;

 if (pGroup->active_count == 0)
 {
  return;
 }

 pGroup->total_mb = (*(pGroup->active_servers))->total_mb;
 pGroup->free_mb = (*(pGroup->active_servers))->free_mb;
 ppServerEnd = pGroup->active_servers + pGroup->active_count;
 for (ppServer=pGroup->active_servers+1; ppServer<ppServerEnd; ppServer++)

 {
  if ((*ppServer)->free_mb < pGroup->free_mb)
  {
   pGroup->total_mb = (*ppServer)->total_mb;
   pGroup->free_mb = (*ppServer)->free_mb;
  }
 }
}
