
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct subpage_prot_table {unsigned long maxaddr; int *** protptrs; int ** low_prot; } ;
typedef int pgd_t ;


 scalar_t__ PAGE_SIZE ;
 unsigned long SBP_L2_COUNT ;
 int free_page (unsigned long) ;
 struct subpage_prot_table* pgd_subpage_prot (int *) ;

void subpage_prot_free(pgd_t *pgd)
{
 struct subpage_prot_table *spt = pgd_subpage_prot(pgd);
 unsigned long i, j, addr;
 u32 **p;

 for (i = 0; i < 4; ++i) {
  if (spt->low_prot[i]) {
   free_page((unsigned long)spt->low_prot[i]);
   spt->low_prot[i] = ((void*)0);
  }
 }
 addr = 0;
 for (i = 0; i < 2; ++i) {
  p = spt->protptrs[i];
  if (!p)
   continue;
  spt->protptrs[i] = ((void*)0);
  for (j = 0; j < SBP_L2_COUNT && addr < spt->maxaddr;
       ++j, addr += PAGE_SIZE)
   if (p[j])
    free_page((unsigned long)p[j]);
  free_page((unsigned long)p);
 }
 spt->maxaddr = 0;
}
