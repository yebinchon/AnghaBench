
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int server_count; int * servers; } ;
typedef TYPE_1__ TrackerServerGroup ;


 scalar_t__ fdfs_server_contain (int *,char const*,int const) ;

TrackerServerInfo *fdfs_tracker_group_get_server(TrackerServerGroup *pGroup,
        const char *target_ip, const int target_port)
{
    TrackerServerInfo *pServer;
    TrackerServerInfo *pEnd;

    pEnd = pGroup->servers + pGroup->server_count;
    for (pServer=pGroup->servers; pServer<pEnd; pServer++)
    {
        if (fdfs_server_contain(pServer, target_ip, target_port))
        {
            return pServer;
        }
    }

    return ((void*)0);
}
