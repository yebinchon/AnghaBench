
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRS_PER_PMD ;

void pmd_init(unsigned long addr, unsigned long pagetable)
{
 unsigned long *p, *end;

  p = (unsigned long *) addr;
 end = p + PTRS_PER_PMD;

 while (p < end) {
  p[0] = (unsigned long)pagetable;
  p[1] = (unsigned long)pagetable;
  p[2] = (unsigned long)pagetable;
  p[3] = (unsigned long)pagetable;
  p[4] = (unsigned long)pagetable;
  p[5] = (unsigned long)pagetable;
  p[6] = (unsigned long)pagetable;
  p[7] = (unsigned long)pagetable;
  p += 8;
 }
}
