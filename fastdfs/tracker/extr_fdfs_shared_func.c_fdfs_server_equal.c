
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int count; TYPE_2__* connections; } ;
typedef TYPE_1__ TrackerServerInfo ;
struct TYPE_8__ {scalar_t__ port; int ip_addr; } ;
typedef TYPE_2__ ConnectionInfo ;


 int fdfs_server_contain1 (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ strcmp (int ,int ) ;

bool fdfs_server_equal(TrackerServerInfo *pServer1,
        TrackerServerInfo *pServer2)
{
 ConnectionInfo *conn;
 ConnectionInfo *end;

    if (pServer1->count != pServer2->count)
    {
        return 0;
    }

    if (pServer1->count == 1)
    {
        return (pServer1->connections->port == pServer2->connections->port &&
            strcmp(pServer1->connections->ip_addr, pServer2->connections->ip_addr) == 0);
    }

 end = pServer1->connections + pServer1->count;
 for (conn=pServer1->connections; conn<end; conn++)
    {
  if (!fdfs_server_contain1(pServer2, conn))
        {
            return 0;
        }
    }

    return 1;
}
