
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRS_PER_PGD ;
 scalar_t__ invalid_pmd_table ;

void pgd_init(unsigned long page)
{
 unsigned long *p, *end;

  p = (unsigned long *) page;
 end = p + PTRS_PER_PGD;

 while (p < end) {
  p[0] = (unsigned long) invalid_pmd_table;
  p[1] = (unsigned long) invalid_pmd_table;
  p[2] = (unsigned long) invalid_pmd_table;
  p[3] = (unsigned long) invalid_pmd_table;
  p[4] = (unsigned long) invalid_pmd_table;
  p[5] = (unsigned long) invalid_pmd_table;
  p[6] = (unsigned long) invalid_pmd_table;
  p[7] = (unsigned long) invalid_pmd_table;
  p += 8;
 }
}
