
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrackerServerInfo ;
typedef int ConnectionInfo ;


 int _notify_reselect_tleader (int *) ;
 int fdfs_server_sock_reset (int *) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_connect_server (int *,int*) ;

__attribute__((used)) static int notify_reselect_tracker_leader(TrackerServerInfo *pTrackerServer)
{
    int result;
    ConnectionInfo *conn;

    fdfs_server_sock_reset(pTrackerServer);
 if ((conn=tracker_connect_server(pTrackerServer, &result)) == ((void*)0))
 {
  return result;
 }

    result = _notify_reselect_tleader(conn);
 tracker_close_connection_ex(conn, result != 0);
    return result;
}
