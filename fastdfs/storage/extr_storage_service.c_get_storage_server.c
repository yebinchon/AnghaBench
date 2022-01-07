
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int targetServer ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ server; } ;
typedef TYPE_2__ FDFSStorageServer ;


 scalar_t__ bsearch (TYPE_2__**,int ,int ,int,int ) ;
 int g_sorted_storages ;
 int g_storage_count ;
 int memset (TYPE_2__*,int ,int) ;
 int storage_cmp_by_server_id ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static FDFSStorageServer *get_storage_server(const char *storage_server_id)
{
 FDFSStorageServer targetServer;
 FDFSStorageServer *pTargetServer;
 FDFSStorageServer **ppFound;

 memset(&targetServer, 0, sizeof(targetServer));
 strcpy(targetServer.server.id, storage_server_id);

 pTargetServer = &targetServer;
 ppFound = (FDFSStorageServer **)bsearch(&pTargetServer, g_sorted_storages, g_storage_count, sizeof(FDFSStorageServer *), storage_cmp_by_server_id);


 if (ppFound == ((void*)0))
 {
  return ((void*)0);
 }
 else
 {
  return *ppFound;
 }
}
