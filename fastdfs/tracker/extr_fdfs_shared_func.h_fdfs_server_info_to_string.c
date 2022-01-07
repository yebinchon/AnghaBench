
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* connections; } ;
typedef TYPE_2__ TrackerServerInfo ;
struct TYPE_5__ {int port; } ;


 int fdfs_server_info_to_string_ex (TYPE_2__ const*,int ,char*,int const) ;

__attribute__((used)) static inline int fdfs_server_info_to_string(const TrackerServerInfo *pServer,
        char *buff, const int buffSize)
{
    return fdfs_server_info_to_string_ex(pServer,
            pServer->connections[0].port, buff, buffSize);
}
