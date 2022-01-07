
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip_addr; int group_name; } ;
typedef TYPE_1__ FDFSStorageIdMap ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int fdfs_cmp_group_name_and_ip(const void *p1, const void *p2)
{
 int result;
 result = strcmp(((FDFSStorageIdMap *)p1)->group_name,
  ((FDFSStorageIdMap *)p2)->group_name);
 if (result != 0)
 {
  return result;
 }

 return strcmp(((FDFSStorageIdMap *)p1)->ip_addr,
  ((FDFSStorageIdMap *)p2)->ip_addr);
}
