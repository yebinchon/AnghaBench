
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int count; int * connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
typedef int ConnectionInfo ;


 int * tracker_make_connection (int *,int*) ;

ConnectionInfo *tracker_connect_server_ex(TrackerServerInfo *pServerInfo,
  const int connect_timeout, int *err_no)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;
 ConnectionInfo *c;
    int current_index;

    c = tracker_make_connection(pServerInfo->connections + pServerInfo->index, err_no);
    if (c != ((void*)0))
    {
        return c;
    }
    if (pServerInfo->count == 1)
    {
        return ((void*)0);
    }

 end = pServerInfo->connections + pServerInfo->count;
 for (conn=pServerInfo->connections; conn<end; conn++)
    {
        current_index = conn - pServerInfo->connections;
        if (current_index != pServerInfo->index)
        {
            if ((c=tracker_make_connection(conn, err_no)) != ((void*)0))
            {
                pServerInfo->index = current_index;
                return c;
            }
        }
    }

    return ((void*)0);
}
