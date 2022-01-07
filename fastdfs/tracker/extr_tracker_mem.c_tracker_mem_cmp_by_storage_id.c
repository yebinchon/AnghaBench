
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
typedef TYPE_1__ FDFSStorageDetail ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int tracker_mem_cmp_by_storage_id(const void *p1, const void *p2)
{
 return strcmp((*((FDFSStorageDetail **)p1))->id,
   (*((FDFSStorageDetail **)p2))->id);
}
