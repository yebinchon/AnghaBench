
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_2__* ids; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_5__ {TYPE_1__ ip_addrs; } ;
typedef TYPE_2__ FDFSStorageIdInfo ;


 TYPE_3__ g_storage_ids_by_id ;

__attribute__((used)) static int fdfs_calc_ip_count()
{
 FDFSStorageIdInfo *idInfo;
 FDFSStorageIdInfo *idEnd;
    int ip_count;

    ip_count = 0;
    idEnd = g_storage_ids_by_id.ids + g_storage_ids_by_id.count;
    for (idInfo=g_storage_ids_by_id.ids; idInfo<idEnd; idInfo++)
    {
        ip_count += idInfo->ip_addrs.count;
    }

    return ip_count;
}
