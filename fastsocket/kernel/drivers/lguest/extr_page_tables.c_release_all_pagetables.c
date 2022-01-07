
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lguest {TYPE_1__* pgdirs; } ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {int * pgdir; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int PAGE_SHIFT ;
 int SWITCHER_PGD_INDEX ;
 unsigned int SWITCHER_PMD_INDEX ;
 int * __va (int) ;
 int pgd_pfn (int ) ;
 int release_pgd (int *) ;
 int release_pmd (int *) ;

__attribute__((used)) static void release_all_pagetables(struct lguest *lg)
{
 unsigned int i, j;


 for (i = 0; i < ARRAY_SIZE(lg->pgdirs); i++)
  if (lg->pgdirs[i].pgdir) {
   for (j = 0; j < SWITCHER_PGD_INDEX; j++)
    release_pgd(lg->pgdirs[i].pgdir + j);
  }
}
