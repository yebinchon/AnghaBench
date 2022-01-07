
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int ENOMEM ;
 int PGALLOC_GFP ;
 int PREALLOCATED_PMDS ;
 scalar_t__ __get_free_page (int ) ;
 int free_pmds (int **) ;

__attribute__((used)) static int preallocate_pmds(pmd_t *pmds[])
{
 int i;
 bool failed = 0;

 for(i = 0; i < PREALLOCATED_PMDS; i++) {
  pmd_t *pmd = (pmd_t *)__get_free_page(PGALLOC_GFP);
  if (pmd == ((void*)0))
   failed = 1;
  pmds[i] = pmd;
 }

 if (failed) {
  free_pmds(pmds);
  return -ENOMEM;
 }

 return 0;
}
