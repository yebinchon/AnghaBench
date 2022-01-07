
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_count; int leader_index; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 int ENOENT ;
 int fdfs_get_storage_ids_from_tracker_server (int *) ;
 int fdfs_server_sock_reset (int *) ;
 int memcpy (int *,int *,int) ;
 int sleep (int) ;

int fdfs_get_storage_ids_from_tracker_group(TrackerServerGroup *pTrackerGroup)
{
 TrackerServerInfo *pGServer;
 TrackerServerInfo *pTServer;
 TrackerServerInfo *pServerStart;
 TrackerServerInfo *pServerEnd;
 TrackerServerInfo trackerServer;
 int result;
 int leader_index;
 int i;

 pTServer = &trackerServer;
 pServerEnd = pTrackerGroup->servers + pTrackerGroup->server_count;

 leader_index = pTrackerGroup->leader_index;
 if (leader_index >= 0)
 {
  pServerStart = pTrackerGroup->servers + leader_index;
 }
 else
 {
  pServerStart = pTrackerGroup->servers;
 }

 result = ENOENT;
 for (i=0; i<5; i++)
 {
  for (pGServer=pServerStart; pGServer<pServerEnd; pGServer++)
  {
   memcpy(pTServer, pGServer, sizeof(TrackerServerInfo));
            fdfs_server_sock_reset(pTServer);
   result = fdfs_get_storage_ids_from_tracker_server(pTServer);
   if (result == 0)
   {
    return result;
   }
  }

  if (pServerStart != pTrackerGroup->servers)
  {
   pServerStart = pTrackerGroup->servers;
  }
  sleep(1);
 }

 return result;
}
