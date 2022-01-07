
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConnectionInfo ;


 int conn_pool_disconnect_server (int *) ;
 int fdfs_client_destroy () ;
 int pTrackerServer ;
 int storage_server_count ;
 int * storage_servers ;
 int tracker_close_connection (int ) ;

void dfs_destroy()
{
 ConnectionInfo *pEnd;
 ConnectionInfo *pServer;

 tracker_close_connection(pTrackerServer);

 pEnd = storage_servers + storage_server_count;
 for (pServer=storage_servers; pServer<pEnd; pServer++)
 {
  conn_pool_disconnect_server(pServer);
 }

 fdfs_client_destroy();
}
