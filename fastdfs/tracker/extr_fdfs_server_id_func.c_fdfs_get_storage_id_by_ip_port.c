
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; int maps; } ;
struct TYPE_4__ {char const* ip_addr; int port; int * idInfo; int * group_name; } ;
typedef TYPE_1__ FDFSStorageIdMap ;
typedef int FDFSStorageIdInfo ;


 scalar_t__ bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int fdfs_cmp_ip_and_port ;
 TYPE_2__ g_storage_ids_by_ip_port ;

FDFSStorageIdInfo *fdfs_get_storage_id_by_ip_port(const char *pIpAddr,
        const int port)
{
 FDFSStorageIdMap target;
 FDFSStorageIdMap *pFound;
    int ports[2];
    int i;

 target.ip_addr = pIpAddr;
 target.group_name = ((void*)0);
    target.idInfo = ((void*)0);
    ports[0] = port;
    ports[1] = 0;
    for (i=0; i<2; i++)
    {
        target.port = ports[i];
        pFound = (FDFSStorageIdMap *)bsearch(&target,
                g_storage_ids_by_ip_port.maps,
                g_storage_ids_by_ip_port.count,
                sizeof(FDFSStorageIdMap), fdfs_cmp_ip_and_port);
        if (pFound != ((void*)0))
        {
            return pFound->idInfo;
        }
    }

    return ((void*)0);
}
