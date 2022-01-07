
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int active_count; TYPE_1__** active_servers; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_1__ FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;


 scalar_t__ strcmp (int ,int ) ;

FDFSStorageDetail *tracker_get_group_sync_src_server(FDFSGroupInfo *pGroup, FDFSStorageDetail *pDestServer)

{
 FDFSStorageDetail **ppServer;
 FDFSStorageDetail **ppServerEnd;

 ppServerEnd = pGroup->active_servers + pGroup->active_count;
 for (ppServer=pGroup->active_servers; ppServer<ppServerEnd; ppServer++)
 {
  if (strcmp((*ppServer)->id, pDestServer->id) == 0)
  {
   continue;
  }

  return *ppServer;
 }

 return ((void*)0);
}
