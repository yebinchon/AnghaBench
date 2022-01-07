
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ FDFSMetaData ;


 int strcmp (int ,int ) ;

int metadata_cmp_by_name(const void *p1, const void *p2)
{
 return strcmp(((FDFSMetaData *)p1)->name, ((FDFSMetaData *)p2)->name);
}
