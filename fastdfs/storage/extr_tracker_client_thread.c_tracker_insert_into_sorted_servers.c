
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ server; } ;
typedef TYPE_2__ FDFSStorageServer ;


 TYPE_2__** g_sorted_storages ;
 int g_storage_count ;
 int strcmp (int ,int ) ;

__attribute__((used)) static bool tracker_insert_into_sorted_servers( FDFSStorageServer *pInsertedServer)

{
 FDFSStorageServer **ppServer;
 FDFSStorageServer **ppEnd;
 int nCompare;

 ppEnd = g_sorted_storages + g_storage_count;
 for (ppServer=ppEnd; ppServer > g_sorted_storages; ppServer--)
 {
  nCompare = strcmp(pInsertedServer->server.id, (*(ppServer-1))->server.id);

  if (nCompare > 0)
  {
   *ppServer = pInsertedServer;
   return 1;
  }
  else if (nCompare < 0)
  {
   *ppServer = *(ppServer-1);
  }
  else
  {
   for (; ppServer < ppEnd; ppServer++)
   {
    *ppServer = *(ppServer+1);
   }
   return 0;
  }
 }

 *ppServer = pInsertedServer;
 return 1;
}
