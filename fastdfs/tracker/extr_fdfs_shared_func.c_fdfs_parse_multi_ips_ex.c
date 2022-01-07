
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_1__* ips; scalar_t__ index; } ;
struct TYPE_4__ {char* address; scalar_t__ type; } ;
typedef TYPE_2__ FDFSMultiIP ;


 int EINVAL ;
 scalar_t__ FDFS_IP_TYPE_UNKNOWN ;
 int FDFS_MULTI_IP_MAX_COUNT ;
 scalar_t__ INADDR_NONE ;
 scalar_t__ fdfs_get_ip_type (char*) ;
 scalar_t__ getIpaddrByName (char*,char*,int) ;
 int h_errno ;
 char* hstrerror (int ) ;
 int snprintf (char*,int const,char*,char*,...) ;
 int splitEx (char*,char,char**,int) ;

int fdfs_parse_multi_ips_ex(char *ip_str, FDFSMultiIP *ip_addrs,
        char *error_info, const int error_size, const bool resolve)
{
    char *hosts[FDFS_MULTI_IP_MAX_COUNT];
    int i;

    ip_addrs->index = 0;
    ip_addrs->count = splitEx(ip_str, ',', hosts, FDFS_MULTI_IP_MAX_COUNT);
    for (i=0; i<ip_addrs->count; i++)
    {
        if (resolve)
        {
            if (getIpaddrByName(hosts[i], ip_addrs->ips[i].address,
                        sizeof(ip_addrs->ips[i].address)) == INADDR_NONE)
            {
                snprintf(error_info, error_size,
                        "host \"%s\" is invalid, error info: %s",
                        hosts[i], hstrerror(h_errno));
                return EINVAL;
            }
        }
        else
        {
            snprintf(ip_addrs->ips[i].address,
                    sizeof(ip_addrs->ips[i].address), "%s", hosts[i]);
        }

        ip_addrs->ips[i].type = fdfs_get_ip_type(ip_addrs->ips[i].address);
        if (ip_addrs->ips[i].type == FDFS_IP_TYPE_UNKNOWN)
        {
            snprintf(error_info, error_size,
                    "ip address \"%s\" is invalid",
                    ip_addrs->ips[i].address);
            return EINVAL;
        }
    }

    *error_info = '\0';
    return 0;
}
