
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_2__ {int leader_index; int * servers; } ;
typedef int ConnectionInfo ;


 int EINVAL ;
 int fdfs_ping_leader (int *) ;
 scalar_t__ g_if_leader_self ;
 TYPE_1__ g_tracker_servers ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_connect_server (int *,int*) ;

__attribute__((used)) static int relationship_ping_leader()
{
 int result;
 int leader_index;
 TrackerServerInfo *pTrackerServer;
    ConnectionInfo *conn;

 if (g_if_leader_self)
 {
  return 0;
 }

 leader_index = g_tracker_servers.leader_index;
 if (leader_index < 0)
 {
  return EINVAL;
 }

 pTrackerServer = g_tracker_servers.servers + leader_index;
    if ((conn=tracker_connect_server(pTrackerServer, &result)) == ((void*)0))
    {
        return result;
 }

 result = fdfs_ping_leader(conn);
    tracker_close_connection_ex(conn, result != 0);
 return result;
}
