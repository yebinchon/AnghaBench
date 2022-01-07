
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;
typedef int ConnectionInfo ;


 int ENOTCONN ;
 int fdfs_active_test (int *) ;
 int * tracker_connect_server_no_pool (int *,int*) ;

int tracker_get_all_connections_ex(TrackerServerGroup *pTrackerGroup)
{
 TrackerServerInfo *pServer;
 TrackerServerInfo *pEnd;
    ConnectionInfo *conn;
    int result;
 int success_count;

 success_count = 0;
 pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
 for (pServer=pTrackerGroup->servers; pServer<pEnd; pServer++)
 {
  if ((conn=tracker_connect_server_no_pool(pServer, &result)) != ((void*)0))
  {
   fdfs_active_test(conn);
   success_count++;
  }
 }

 return success_count > 0 ? 0 : ENOTCONN;
}
