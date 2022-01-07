
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int group_name; } ;
struct TYPE_5__ {int count; TYPE_2__** sorted_groups; } ;
typedef TYPE_1__ FDFSGroups ;
typedef TYPE_2__ FDFSGroupInfo ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void tracker_mem_insert_into_sorted_groups(FDFSGroups *pGroups, FDFSGroupInfo *pTargetGroup)

{
 FDFSGroupInfo **ppGroup;
 FDFSGroupInfo **ppEnd;

 ppEnd = pGroups->sorted_groups + pGroups->count;
 for (ppGroup=ppEnd; ppGroup > pGroups->sorted_groups; ppGroup--)
 {
  if (strcmp(pTargetGroup->group_name, (*(ppGroup-1))->group_name) > 0)

  {
   *ppGroup = pTargetGroup;
   return;
  }
  else
  {
   *ppGroup = *(ppGroup-1);
  }
 }

 *ppGroup = pTargetGroup;
}
