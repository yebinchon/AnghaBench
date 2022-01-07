
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t index; int count; TYPE_2__* connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
struct TYPE_7__ {scalar_t__ sock; } ;
typedef TYPE_2__ ConnectionInfo ;


 int conn_pool_connect_server_ex (TYPE_2__*,int ,char const*,int const) ;
 int g_fdfs_connect_timeout ;

ConnectionInfo *tracker_connect_server_no_pool_ex(TrackerServerInfo *pServerInfo,
        const char *bind_addr, int *err_no, const bool log_connect_error)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;
    int current_index;

 if (pServerInfo->connections[pServerInfo->index].sock >= 0)
 {
        *err_no = 0;
  return pServerInfo->connections + pServerInfo->index;
 }

 *err_no = conn_pool_connect_server_ex(pServerInfo->connections
            + pServerInfo->index, g_fdfs_connect_timeout,
            bind_addr, log_connect_error);
    if (*err_no == 0)
    {
  return pServerInfo->connections + pServerInfo->index;
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
            if ((*err_no=conn_pool_connect_server_ex(conn,
                            g_fdfs_connect_timeout, bind_addr,
                            log_connect_error)) == 0)
            {
                pServerInfo->index = current_index;
                return pServerInfo->connections + pServerInfo->index;
            }
        }
    }

    return ((void*)0);
}
