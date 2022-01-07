
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; int index; TYPE_1__* ips; } ;
struct TYPE_4__ {int address; } ;
typedef TYPE_2__ FDFSMultiIP ;


 scalar_t__ strcmp (int ,char const*) ;

void fdfs_set_multi_ip_index(FDFSMultiIP *multi_ip, const char *target_ip)
{
    int i;
    if (multi_ip->count == 1)
    {
        return;
    }

    for (i=0; i<multi_ip->count; i++)
    {
        if (strcmp(multi_ip->ips[i].address, target_ip) == 0)
        {
            multi_ip->index = i;
            break;
        }
    }
}
