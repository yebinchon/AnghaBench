
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMCR0_PMC1SEL_SH ;
 int MMCR1_PMC3SEL_SH ;
 unsigned long MMCRA_PMC8SEL0_SH ;

__attribute__((used)) static void p4_disable_pmc(unsigned int pmc, unsigned long mmcr[])
{




 if (pmc <= 1) {
  mmcr[0] &= ~(0x1fUL << (MMCR0_PMC1SEL_SH - 7 * pmc));
 } else {
  mmcr[1] &= ~(0x1fUL << (MMCR1_PMC3SEL_SH - 5 * (pmc - 2)));
  if (pmc == 7)
   mmcr[2] &= ~(1UL << MMCRA_PMC8SEL0_SH);
 }
}
