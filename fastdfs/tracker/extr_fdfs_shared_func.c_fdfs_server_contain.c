
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
typedef int ConnectionInfo ;


 int FC_CONNECTION_SERVER_EQUAL (int ,char const*,int const) ;

bool fdfs_server_contain(TrackerServerInfo *pServerInfo,
        const char *target_ip, const int target_port)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;

    if (pServerInfo->count == 1)
    {
  return FC_CONNECTION_SERVER_EQUAL(pServerInfo->connections[0],
                target_ip, target_port);
    }
    else if (pServerInfo->count == 2)
    {
  return FC_CONNECTION_SERVER_EQUAL(pServerInfo->connections[0],
                target_ip, target_port) ||
            FC_CONNECTION_SERVER_EQUAL(pServerInfo->connections[1],
                    target_ip, target_port);
    }

 end = pServerInfo->connections + pServerInfo->count;
 for (conn=pServerInfo->connections; conn<end; conn++)
    {
  if (FC_CONNECTION_SERVER_EQUAL(*conn, target_ip, target_port))
        {
            return 1;
        }
    }

    return 0;
}
