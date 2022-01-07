
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int ** groups; int ** sorted_groups; } ;
typedef TYPE_1__ FDFSGroups ;
typedef int FDFSGroupInfo ;


 int free (int **) ;
 int tracker_mem_free_group (int *) ;
 int tracker_save_sys_files () ;

__attribute__((used)) static int tracker_mem_destroy_groups(FDFSGroups *pGroups, const bool saveFiles)
{
 FDFSGroupInfo **ppGroup;
 FDFSGroupInfo **ppEnd;
 int result;

 if (pGroups->groups == ((void*)0))
 {
  result = 0;
 }
 else
 {
  if (saveFiles)
  {
   result = tracker_save_sys_files();
  }
  else
  {
   result = 0;
  }

  ppEnd = pGroups->groups + pGroups->count;
  for (ppGroup=pGroups->groups; ppGroup<ppEnd; ppGroup++)
  {
   tracker_mem_free_group(*ppGroup);
  }

  if (pGroups->sorted_groups != ((void*)0))
  {
   free(pGroups->sorted_groups);
   pGroups->sorted_groups = ((void*)0);
  }

  free(pGroups->groups);
  pGroups->groups = ((void*)0);
 }

 return result;
}
