
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_2__* connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
struct TYPE_5__ {int sock; } ;
typedef TYPE_2__ ConnectionInfo ;



void fdfs_server_sock_reset(TrackerServerInfo *pServerInfo)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;

    if (pServerInfo->count == 1)
    {
  pServerInfo->connections[0].sock = -1;
    }
    else if (pServerInfo->count == 2)
    {
  pServerInfo->connections[0].sock = -1;
  pServerInfo->connections[1].sock = -1;
    }
    else
    {
        end = pServerInfo->connections + pServerInfo->count;
        for (conn=pServerInfo->connections; conn<end; conn++)
        {
            conn->sock = -1;
        }
    }
}
