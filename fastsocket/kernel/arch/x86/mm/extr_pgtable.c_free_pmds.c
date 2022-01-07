
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int PREALLOCATED_PMDS ;
 int free_page (unsigned long) ;

__attribute__((used)) static void free_pmds(pmd_t *pmds[])
{
 int i;

 for(i = 0; i < PREALLOCATED_PMDS; i++)
  if (pmds[i])
   free_page((unsigned long)pmds[i]);
}
