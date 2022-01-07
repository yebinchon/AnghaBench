
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int * connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
typedef int ConnectionInfo ;


 int conn_pool_disconnect_server (int *) ;

void tracker_disconnect_server_no_pool(TrackerServerInfo *pServerInfo)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;

    if (pServerInfo->count == 1)
    {
        conn_pool_disconnect_server(pServerInfo->connections + 0);
        return;
    }

 end = pServerInfo->connections + pServerInfo->count;
 for (conn=pServerInfo->connections; conn<end; conn++)
    {
        conn_pool_disconnect_server(conn);
    }
}
