
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PAGE_MASK ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int ,unsigned long) ;
 scalar_t__ pmd_present (int ) ;
 int pp ;
 int printk (char*,...) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pte_val (int ) ;
 int pud_offset (int *,unsigned long) ;

void print_8xx_pte(struct mm_struct *mm, unsigned long addr)
{
 pgd_t *pgd;
 pmd_t *pmd;
 pte_t *pte;

 printk(" pte @ 0x%8lx: ", addr);
 pgd = pgd_offset(mm, addr & PAGE_MASK);
 if (pgd) {
  pmd = pmd_offset(pud_offset(pgd, addr & PAGE_MASK),
                   addr & PAGE_MASK);
  if (pmd && pmd_present(*pmd)) {
   pte = pte_offset_kernel(pmd, addr & PAGE_MASK);
   if (pte) {
    printk(" (0x%08lx)->(0x%08lx)->0x%08lx\n",
            (long)pgd, (long)pte, (long)pte_val(*pte));

    printk(" RPN: %05lx PP: %lx SPS: %lx SH: %lx "
           "CI: %lx v: %lx\n",
           ((long)pte_val(*pte))>>12,
           (((long)pte_val(*pte))>>10)&3,
           (((long)pte_val(*pte))>>3)&1,
           (((long)pte_val(*pte))>>2)&1,
           (((long)pte_val(*pte))>>1)&1,
           ((long)pte_val(*pte))&1
           );

   }
   else {
    printk("no pte\n");
   }
  }
  else {
   printk("no pmd\n");
  }
 }
 else {
  printk("no pgd\n");
 }
}
