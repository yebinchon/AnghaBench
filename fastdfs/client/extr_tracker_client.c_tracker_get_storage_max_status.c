
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_6__ {int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;
struct TYPE_7__ {int status; int id; } ;
typedef TYPE_2__ FDFSStorageBrief ;
typedef int ConnectionInfo ;


 int ENOENT ;
 int fdfs_server_sock_reset (int *) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcpy (char*,int ) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_connect_server (int *,int*) ;
 int tracker_get_storage_status (int *,char const*,char const*,TYPE_2__*) ;

int tracker_get_storage_max_status(TrackerServerGroup *pTrackerGroup, const char *group_name, const char *ip_addr, char *storage_id, int *status)


{
 ConnectionInfo *conn;
 TrackerServerInfo tracker_server;
 TrackerServerInfo *pServer;
 TrackerServerInfo *pEnd;
 FDFSStorageBrief storage_brief;
 int result;

 memset(&storage_brief, 0, sizeof(FDFSStorageBrief));
 storage_brief.status = -1;

 *storage_id = '\0';
 *status = -1;
 pEnd = pTrackerGroup->servers + pTrackerGroup->server_count;
 for (pServer=pTrackerGroup->servers; pServer<pEnd; pServer++)
 {
  memcpy(&tracker_server, pServer, sizeof(TrackerServerInfo));
        fdfs_server_sock_reset(&tracker_server);
  if ((conn=tracker_connect_server(&tracker_server, &result)) == ((void*)0))
  {
   return result;
  }

  result = tracker_get_storage_status(conn, group_name, ip_addr, &storage_brief);

  tracker_close_connection_ex(conn, result != 0);

  if (result != 0)
  {
   if (result == ENOENT)
   {
    continue;
   }
   return result;
  }

  strcpy(storage_id, storage_brief.id);
  if (storage_brief.status > *status)
  {
   *status = storage_brief.status;
  }
 }

 if (*status == -1)
 {
  return ENOENT;
 }

 return 0;
}
