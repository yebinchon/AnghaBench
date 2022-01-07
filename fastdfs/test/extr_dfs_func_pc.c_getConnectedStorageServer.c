
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sock; int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int conn_pool_connect_server (TYPE_1__*,int ) ;
 int g_fdfs_connect_timeout ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int storage_server_count ;
 TYPE_1__* storage_servers ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static ConnectionInfo *getConnectedStorageServer(
  ConnectionInfo *pStorageServer, int *err_no)
{
 ConnectionInfo *pEnd;
 ConnectionInfo *pServer;

 pEnd = storage_servers + storage_server_count;
 for (pServer=storage_servers; pServer<pEnd; pServer++)
 {
  if (strcmp(pStorageServer->ip_addr, pServer->ip_addr) == 0)
  {
   if (pServer->sock < 0)
   {
    *err_no = conn_pool_connect_server(pServer, g_fdfs_connect_timeout);

    if (*err_no != 0)
    {
     return ((void*)0);
    }
   }
   else
   {
    *err_no = 0;
   }

   return pServer;
  }
 }

 pServer = pEnd;
 memcpy(pServer, pStorageServer, sizeof(ConnectionInfo));
 pServer->sock = -1;
 if ((*err_no=conn_pool_connect_server(pServer, g_fdfs_connect_timeout)) != 0)

 {
  return ((void*)0);
 }

 storage_server_count++;

 *err_no = 0;
 return pServer;
}
