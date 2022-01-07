
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ FDFSStorageIdInfo ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int fdfs_cmp_server_id(const void *p1, const void *p2)
{
 return strcmp(((FDFSStorageIdInfo *)p1)->id,
  ((FDFSStorageIdInfo *)p2)->id);
}
