
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TrackerServerInfo ;
struct TYPE_3__ {int port; int ip_addr; } ;
typedef TYPE_1__ ConnectionInfo ;


 int fdfs_server_contain (int *,int ,int ) ;

__attribute__((used)) static inline bool fdfs_server_contain1(TrackerServerInfo *pServerInfo,
        const ConnectionInfo *target)
{
    return fdfs_server_contain(pServerInfo, target->ip_addr, target->port);
}
