
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSMultiIP ;


 int fdfs_parse_multi_ips_ex (char*,int *,char*,int const,int const) ;

__attribute__((used)) static inline int fdfs_parse_multi_ips(char *ip_str, FDFSMultiIP *ip_addrs,
        char *error_info, const int error_size)
{
    const bool resolve = 1;
    return fdfs_parse_multi_ips_ex(ip_str, ip_addrs,
            error_info, error_size, resolve);
}
