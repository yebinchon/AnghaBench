
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSMultiIP ;


 int fdfs_multi_ips_to_string_ex (int const*,char const,char*,int const) ;

__attribute__((used)) static inline int fdfs_multi_ips_to_string(const FDFSMultiIP *ip_addrs,
        char *buff, const int buffSize)
{
    const char seperator = ',';
    return fdfs_multi_ips_to_string_ex(ip_addrs, seperator, buff, buffSize);
}
