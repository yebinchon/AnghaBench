
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int ip_addr; } ;
typedef TYPE_1__ FDFSStorageIdMap ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int fdfs_cmp_ip_and_port(const void *p1, const void *p2)
{
 int result;
    result = strcmp(((FDFSStorageIdMap *)p1)->ip_addr,
            ((FDFSStorageIdMap *)p2)->ip_addr);
    if (result != 0)
    {
        return result;
    }

    return ((FDFSStorageIdMap *)p1)->port -
        ((FDFSStorageIdMap *)p2)->port;
}
