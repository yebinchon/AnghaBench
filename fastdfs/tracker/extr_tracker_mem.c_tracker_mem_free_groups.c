
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** FDFSGroupInfo ;


 int free (int ******) ;

__attribute__((used)) static void tracker_mem_free_groups(FDFSGroupInfo **groups, const int count)
{
 FDFSGroupInfo **ppGroup;
 FDFSGroupInfo **ppGroupEnd;

 ppGroupEnd = groups + count;
 for (ppGroup=groups; ppGroup<ppGroupEnd; ppGroup++)
 {
  if (*ppGroup != ((void*)0))
  {
   free(*ppGroup);
  }
 }

 free(groups);
}
