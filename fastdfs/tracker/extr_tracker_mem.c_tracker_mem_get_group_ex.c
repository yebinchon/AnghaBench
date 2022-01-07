
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int target_groups ;
struct TYPE_8__ {int group_name; } ;
struct TYPE_7__ {int count; int sorted_groups; } ;
typedef TYPE_1__ FDFSGroups ;
typedef TYPE_2__ FDFSGroupInfo ;


 scalar_t__ bsearch (TYPE_2__**,int ,int ,int,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcpy (int ,char const*) ;
 int tracker_mem_cmp_by_group_name ;

FDFSGroupInfo *tracker_mem_get_group_ex(FDFSGroups *pGroups, const char *group_name)

{
 FDFSGroupInfo target_groups;
 FDFSGroupInfo *pTargetGroups;
 FDFSGroupInfo **ppGroup;

 memset(&target_groups, 0, sizeof(target_groups));
 strcpy(target_groups.group_name, group_name);
 pTargetGroups = &target_groups;
 ppGroup = (FDFSGroupInfo **)bsearch(&pTargetGroups, pGroups->sorted_groups, pGroups->count, sizeof(FDFSGroupInfo *), tracker_mem_cmp_by_group_name);




 if (ppGroup != ((void*)0))
 {
  return *ppGroup;
 }
 else
 {
  return ((void*)0);
 }
}
