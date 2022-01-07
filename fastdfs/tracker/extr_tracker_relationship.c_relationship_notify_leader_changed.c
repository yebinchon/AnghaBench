
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_2__ {int server_count; int * servers; } ;
typedef int ConnectionInfo ;


 int ENOENT ;
 TYPE_1__ g_tracker_servers ;
 int relationship_commit_next_leader (int *,int *,int*) ;
 int relationship_notify_next_leader (int *,int *,int*) ;

__attribute__((used)) static int relationship_notify_leader_changed(ConnectionInfo *pLeader)
{
 TrackerServerInfo *pTrackerServer;
 TrackerServerInfo *pTrackerEnd;
 int result;
 bool bConnectFail;
 int success_count;

 result = ENOENT;
 pTrackerEnd = g_tracker_servers.servers + g_tracker_servers.server_count;
 success_count = 0;
 for (pTrackerServer=g_tracker_servers.servers; pTrackerServer<pTrackerEnd; pTrackerServer++)

 {
  if ((result=relationship_notify_next_leader(pTrackerServer, pLeader, &bConnectFail)) != 0)

  {
   if (!bConnectFail)
   {
    return result;
   }
  }
  else
  {
   success_count++;
  }
 }

 if (success_count == 0)
 {
  return result;
 }

 result = ENOENT;
 success_count = 0;
 for (pTrackerServer=g_tracker_servers.servers; pTrackerServer<pTrackerEnd; pTrackerServer++)

 {
  if ((result=relationship_commit_next_leader(pTrackerServer, pLeader, &bConnectFail)) != 0)

  {
   if (!bConnectFail)
   {
    return result;
   }
  }
  else
  {
   success_count++;
  }
 }
 if (success_count == 0)
 {
  return result;
 }

 return 0;
}
