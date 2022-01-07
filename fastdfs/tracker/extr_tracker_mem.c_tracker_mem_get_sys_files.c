
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrackerServerInfo ;
typedef int ConnectionInfo ;


 int TRACKER_SYS_FILE_COUNT ;
 int fdfs_server_sock_reset (int *) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_connect_server (int *,int*) ;
 int tracker_get_sys_files_end (int *) ;
 int tracker_get_sys_files_start (int *) ;
 int tracker_mem_get_one_sys_file (int *,int) ;

__attribute__((used)) static int tracker_mem_get_sys_files(TrackerServerInfo *pTrackerServer)
{
 ConnectionInfo *conn;
 int result;
 int index;

    fdfs_server_sock_reset(pTrackerServer);
 if ((conn=tracker_connect_server(pTrackerServer, &result)) == ((void*)0))
 {
  return result;
 }

 if ((result=tracker_get_sys_files_start(conn)) != 0)
 {
  tracker_close_connection_ex(conn, 1);
  return result;
 }

 for (index=0; index<TRACKER_SYS_FILE_COUNT; index++)
 {
  result = tracker_mem_get_one_sys_file(conn, index);
  if (result != 0)
  {
   break;
  }
 }

 result = tracker_get_sys_files_end(conn);
 tracker_close_connection_ex(conn, result != 0);

 return result;
}
