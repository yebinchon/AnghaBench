
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; int * connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
typedef int ConnectionInfo ;


 int fdfs_server_contain1 (TYPE_1__*,int *) ;

bool fdfs_server_contain_ex(TrackerServerInfo *pServer1,
        TrackerServerInfo *pServer2)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;

    if (pServer1->count == 1)
    {
        return fdfs_server_contain1(pServer2, pServer1->connections + 0);
    }
    else if (pServer1->count == 2)
    {
        if (fdfs_server_contain1(pServer2, pServer1->connections + 0))
        {
            return 1;
        }
        return fdfs_server_contain1(pServer2, pServer1->connections + 1);
    }

 end = pServer1->connections + pServer1->count;
 for (conn=pServer1->connections; conn<end; conn++)
    {
  if (fdfs_server_contain1(pServer2, conn))
        {
            return 1;
        }
    }

    return 0;
}
