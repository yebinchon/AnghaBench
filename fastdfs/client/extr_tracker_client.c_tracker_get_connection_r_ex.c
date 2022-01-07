
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_index; int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;
typedef int ConnectionInfo ;


 int fdfs_server_sock_reset (int *) ;
 int memcpy (int *,int *,int) ;
 int * tracker_connect_server (int *,int*) ;

ConnectionInfo *tracker_get_connection_r_ex(TrackerServerGroup *pTrackerGroup,
  TrackerServerInfo *pTrackerServer, int *err_no)
{
 ConnectionInfo *conn;
 TrackerServerInfo *pCurrentServer;
 TrackerServerInfo *pServer;
 TrackerServerInfo *pEnd;
 int server_index;

 server_index = pTrackerGroup->server_index;
 if (server_index >= pTrackerGroup->server_count)
 {
  server_index = 0;
 }

 do
 {
 pCurrentServer = pTrackerGroup->servers + server_index;
 memcpy(pTrackerServer, pCurrentServer, sizeof(TrackerServerInfo));
    fdfs_server_sock_reset(pTrackerServer);
 if ((conn=tracker_connect_server(pTrackerServer, err_no)) != ((void*)0))
 {
  break;
 }

 pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
 for (pServer=pCurrentServer+1; pServer<pEnd; pServer++)
 {
  memcpy(pTrackerServer, pServer, sizeof(TrackerServerInfo));
        fdfs_server_sock_reset(pTrackerServer);
  if ((conn=tracker_connect_server(pTrackerServer, err_no)) != ((void*)0))
  {
   pTrackerGroup->server_index = pServer -
       pTrackerGroup->servers;
   break;
  }
 }

 if (conn != ((void*)0))
 {
  break;
 }

 for (pServer=pTrackerGroup->servers; pServer<pCurrentServer; pServer++)
 {
  memcpy(pTrackerServer, pServer, sizeof(TrackerServerInfo));
        fdfs_server_sock_reset(pTrackerServer);
  if ((conn=tracker_connect_server(pTrackerServer, err_no)) != ((void*)0))
  {
   pTrackerGroup->server_index = pServer -
       pTrackerGroup->servers;
   break;
  }
 }
 } while (0);

 pTrackerGroup->server_index++;
 if (pTrackerGroup->server_index >= pTrackerGroup->server_count)
 {
  pTrackerGroup->server_index = 0;
 }

 return conn;
}
