
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TrackerServerInfo ;


 int fdfs_parse_server_info_ex (char*,int const,int *,int const) ;

__attribute__((used)) static inline int fdfs_parse_server_info(char *server_str, const int default_port,
        TrackerServerInfo *pServer)
{
    const bool resolve = 1;
    return fdfs_parse_server_info_ex(server_str, default_port,
            pServer, resolve);
}
