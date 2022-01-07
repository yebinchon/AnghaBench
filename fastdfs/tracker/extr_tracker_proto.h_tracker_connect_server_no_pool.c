
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrackerServerInfo ;
typedef int ConnectionInfo ;


 int * tracker_connect_server_no_pool_ex (int *,char const*,int*,int) ;

__attribute__((used)) static inline ConnectionInfo *tracker_connect_server_no_pool(
        TrackerServerInfo *pServerInfo, int *err_no)
{
    const char *bind_addr = ((void*)0);
    return tracker_connect_server_no_pool_ex(pServerInfo,
            bind_addr, err_no, 1);
}
