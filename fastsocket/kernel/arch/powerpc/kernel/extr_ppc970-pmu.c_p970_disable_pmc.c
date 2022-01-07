
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMCR0_PMC1SEL_SH ;
 int MMCR1_PMC3SEL_SH ;

__attribute__((used)) static void p970_disable_pmc(unsigned int pmc, unsigned long mmcr[])
{
 int shift, i;

 if (pmc <= 1) {
  shift = MMCR0_PMC1SEL_SH - 7 * pmc;
  i = 0;
 } else {
  shift = MMCR1_PMC3SEL_SH - 5 * (pmc - 2);
  i = 1;
 }



 mmcr[i] = (mmcr[i] & ~(0x1fUL << shift)) | (0x08UL << shift);
}
