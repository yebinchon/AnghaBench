
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_2__ {int server_count; int * servers; } ;
typedef int ConnectionInfo ;


 int ENOENT ;
 int fdfs_server_sock_reset (int *) ;
 int g_group_name ;
 int g_sync_src_id ;
 TYPE_1__ g_tracker_group ;
 int memcpy (int *,int *,int) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_connect_server (int *,int*) ;
 int tracker_get_storage_id (int *,int ,int ,int ) ;

__attribute__((used)) static int storage_convert_src_server_id()
{
 TrackerServerInfo *pTrackerServer;
 TrackerServerInfo *pServerEnd;
 ConnectionInfo *pTrackerConn;
 TrackerServerInfo tracker_server;
 int result;

 result = ENOENT;
 pServerEnd = g_tracker_group.servers + g_tracker_group.server_count;
 for (pTrackerServer=g_tracker_group.servers;
  pTrackerServer<pServerEnd; pTrackerServer++)
 {
  memcpy(&tracker_server, pTrackerServer,
   sizeof(TrackerServerInfo));
        fdfs_server_sock_reset(&tracker_server);
        if ((pTrackerConn=tracker_connect_server(&tracker_server,
   &result)) == ((void*)0))
  {
   continue;
  }

  result = tracker_get_storage_id(pTrackerConn,
   g_group_name, g_sync_src_id, g_sync_src_id);
  tracker_close_connection_ex(pTrackerConn,
   result != 0 && result != ENOENT);
  if (result == 0)
  {
   return 0;
  }
 }

 return result;
}
