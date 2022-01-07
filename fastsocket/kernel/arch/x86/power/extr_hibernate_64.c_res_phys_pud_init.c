
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ PMD_SIZE ;
 long PTRS_PER_PMD ;
 long PTRS_PER_PUD ;
 long PUD_SIZE ;
 int _KERNPG_TABLE ;
 unsigned long __PAGE_KERNEL_LARGE_EXEC ;
 int __pa (int *) ;
 int __pmd (unsigned long) ;
 int __pud (int) ;
 unsigned long __supported_pte_mask ;
 scalar_t__ get_safe_page (int ) ;
 long pud_index (unsigned long) ;
 int set_pmd (int *,int ) ;
 int set_pud (int *,int ) ;

__attribute__((used)) static int res_phys_pud_init(pud_t *pud, unsigned long address, unsigned long end)
{
 long i, j;

 i = pud_index(address);
 pud = pud + i;
 for (; i < PTRS_PER_PUD; pud++, i++) {
  unsigned long paddr;
  pmd_t *pmd;

  paddr = address + i*PUD_SIZE;
  if (paddr >= end)
   break;

  pmd = (pmd_t *)get_safe_page(GFP_ATOMIC);
  if (!pmd)
   return -ENOMEM;
  set_pud(pud, __pud(__pa(pmd) | _KERNPG_TABLE));
  for (j = 0; j < PTRS_PER_PMD; pmd++, j++, paddr += PMD_SIZE) {
   unsigned long pe;

   if (paddr >= end)
    break;
   pe = __PAGE_KERNEL_LARGE_EXEC | paddr;
   pe &= __supported_pte_mask;
   set_pmd(pmd, __pmd(pe));
  }
 }
 return 0;
}
