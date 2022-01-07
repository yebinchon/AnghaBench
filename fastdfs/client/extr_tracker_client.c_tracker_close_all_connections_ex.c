
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 int tracker_disconnect_server_no_pool (int *) ;

void tracker_close_all_connections_ex(TrackerServerGroup *pTrackerGroup)
{
 TrackerServerInfo *pServer;
 TrackerServerInfo *pEnd;

 pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
 for (pServer=pTrackerGroup->servers; pServer<pEnd; pServer++)
 {
  tracker_disconnect_server_no_pool(pServer);
 }
}
