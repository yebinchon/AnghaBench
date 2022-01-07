
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ store_server; } ;
struct TYPE_6__ {scalar_t__ active_count; TYPE_1__** active_servers; TYPE_1__* pStoreServer; } ;
struct TYPE_5__ {scalar_t__ upload_priority; } ;
typedef TYPE_1__ FDFSStorageDetail ;
typedef TYPE_2__ FDFSGroupInfo ;


 scalar_t__ FDFS_STORE_SERVER_FIRST_BY_PRI ;
 TYPE_4__ g_groups ;

__attribute__((used)) static void tracker_mem_find_store_server(FDFSGroupInfo *pGroup)
{
 if (pGroup->active_count == 0)
 {
  pGroup->pStoreServer = ((void*)0);
  return;
 }

 if (g_groups.store_server == FDFS_STORE_SERVER_FIRST_BY_PRI)
 {
  FDFSStorageDetail **ppEnd;
  FDFSStorageDetail **ppServer;
  FDFSStorageDetail *pMinPriServer;

  pMinPriServer = *(pGroup->active_servers);
  ppEnd = pGroup->active_servers + pGroup->active_count;
  for (ppServer=pGroup->active_servers+1; ppServer<ppEnd; ppServer++)

  {
   if ((*ppServer)->upload_priority < pMinPriServer->upload_priority)

   {
    pMinPriServer = *ppServer;
   }
  }

  pGroup->pStoreServer = pMinPriServer;
 }
 else
 {
  pGroup->pStoreServer = *(pGroup->active_servers);
 }
}
