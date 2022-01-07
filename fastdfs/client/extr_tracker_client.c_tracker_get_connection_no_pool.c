
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_index; int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;
typedef int ConnectionInfo ;


 int * tracker_connect_server_no_pool (int *,int*) ;

ConnectionInfo *tracker_get_connection_no_pool(TrackerServerGroup *pTrackerGroup)
{
 TrackerServerInfo *pCurrentServer;
 TrackerServerInfo *pServer;
 TrackerServerInfo *pEnd;
 ConnectionInfo *conn;
 int server_index;
 int result;

 server_index = pTrackerGroup->server_index;
 if (server_index >= pTrackerGroup->server_count)
 {
  server_index = 0;
 }

 conn = ((void*)0);
 do
 {
 pCurrentServer = pTrackerGroup->servers + server_index;
 if ((conn=tracker_connect_server_no_pool(pCurrentServer, &result)) != ((void*)0))
 {
  break;
 }

 pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
 for (pServer=pCurrentServer+1; pServer<pEnd; pServer++)
 {
  if ((conn=tracker_connect_server_no_pool(pServer, &result)) != ((void*)0))
  {
   pTrackerGroup->server_index = pServer - pTrackerGroup->servers;
   break;
  }
 }

 if (conn != ((void*)0))
 {
  break;
 }

 for (pServer=pTrackerGroup->servers; pServer<pCurrentServer; pServer++)
 {
  if ((conn=tracker_connect_server_no_pool(pServer, &result)) != ((void*)0))
  {
   pTrackerGroup->server_index = pServer - pTrackerGroup->servers;
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
