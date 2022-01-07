
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USER_PTRS_PER_PGD ;
 scalar_t__ invalid_pte_table ;

void pgd_init(unsigned long page)
{
 unsigned long *p = (unsigned long *) page;
 int i;

 for (i = 0; i < USER_PTRS_PER_PGD; i += 8) {
  p[i + 0] = (unsigned long) invalid_pte_table;
  p[i + 1] = (unsigned long) invalid_pte_table;
  p[i + 2] = (unsigned long) invalid_pte_table;
  p[i + 3] = (unsigned long) invalid_pte_table;
  p[i + 4] = (unsigned long) invalid_pte_table;
  p[i + 5] = (unsigned long) invalid_pte_table;
  p[i + 6] = (unsigned long) invalid_pte_table;
  p[i + 7] = (unsigned long) invalid_pte_table;
 }
}
