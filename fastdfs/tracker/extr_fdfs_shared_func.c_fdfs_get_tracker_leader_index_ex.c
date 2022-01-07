
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {scalar_t__ server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 scalar_t__ fdfs_server_contain (int *,char const*,int const) ;

int fdfs_get_tracker_leader_index_ex(TrackerServerGroup *pServerGroup,
  const char *leaderIp, const int leaderPort)
{
 TrackerServerInfo *pServer;
 TrackerServerInfo *pEnd;

 if (pServerGroup->server_count == 0)
 {
  return -1;
 }

 pEnd = pServerGroup->servers + pServerGroup->server_count;
 for (pServer=pServerGroup->servers; pServer<pEnd; pServer++)
 {
        if (fdfs_server_contain(pServer, leaderIp, leaderPort))
  {
   return pServer - pServerGroup->servers;
  }
 }

 return -1;
}
