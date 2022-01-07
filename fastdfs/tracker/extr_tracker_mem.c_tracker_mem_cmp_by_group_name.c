
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int group_name; } ;
typedef TYPE_1__ FDFSGroupInfo ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int tracker_mem_cmp_by_group_name(const void *p1, const void *p2)
{
 return strcmp((*((FDFSGroupInfo **)p1))->group_name,
   (*((FDFSGroupInfo **)p2))->group_name);
}
