
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_1__* ips; } ;
struct TYPE_4__ {int address; void* type; } ;
typedef TYPE_2__ FDFSMultiIP ;


 int EEXIST ;
 int ENOSPC ;
 void* fdfs_get_ip_type (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int strcpy (int ,char const*) ;

int storage_insert_ip_addr_to_multi_ips(FDFSMultiIP *multi_ip,
        const char *ip_addr, const int ips_limit)
{
    int i;
    if (multi_ip->count == 0)
    {
        multi_ip->count = 1;
        multi_ip->ips[0].type = fdfs_get_ip_type(ip_addr);
        strcpy(multi_ip->ips[0].address, ip_addr);
        return 0;
    }

    for (i = 0; i < multi_ip->count; i++)
    {
        if (strcmp(multi_ip->ips[i].address, ip_addr) == 0)
        {
            return EEXIST;
        }
    }

    if (i >= ips_limit)
    {
        return ENOSPC;
    }

    multi_ip->ips[i].type = fdfs_get_ip_type(ip_addr);
    strcpy(multi_ip->ips[i].address, ip_addr);
    multi_ip->count++;
    return 0;
}
