
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ip_str ;
struct TYPE_6__ {TYPE_1__* connections; } ;
typedef TYPE_2__ TrackerServerInfo ;
struct TYPE_7__ {int server_count; int leader_index; TYPE_2__* servers; } ;
struct TYPE_5__ {int port; } ;


 int fdfs_server_info_to_string (TYPE_2__*,char*,int) ;
 TYPE_3__ g_tracker_servers ;
 int snprintf (char*,int const,char*,int,...) ;

__attribute__((used)) static int fdfs_dump_tracker_servers(char *buff, const int buffSize)
{
 int total_len;
 TrackerServerInfo *pTrackerServer;
 TrackerServerInfo *pTrackerEnd;
    char ip_str[256];

 total_len = snprintf(buff, buffSize, "g_tracker_servers.server_count=%d, " "g_tracker_servers.leader_index=%d\n", g_tracker_servers.server_count, g_tracker_servers.leader_index);




 if (g_tracker_servers.server_count == 0)
 {
  return total_len;
 }

 pTrackerEnd = g_tracker_servers.servers + g_tracker_servers.server_count;
 for (pTrackerServer=g_tracker_servers.servers; pTrackerServer<pTrackerEnd; pTrackerServer++)

 {
        fdfs_server_info_to_string(pTrackerServer, ip_str, sizeof(ip_str));

  total_len += snprintf(buff + total_len, buffSize - total_len,
   "\t%d. tracker server=%s:%d\n", (int)(pTrackerServer - g_tracker_servers.servers) + 1, ip_str, pTrackerServer->connections[0].port);


 }

 return total_len;
}
