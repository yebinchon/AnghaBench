
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int PAGE_KERNEL_EXEC ;
 unsigned long PAGE_SHIFT ;
 int _PAGE_PRESENT ;
 int _PAGE_TABLE ;
 int __pa (int *) ;
 int __pgd (int) ;
 int __pmd (int) ;
 int pfn_pte (unsigned long,int ) ;
 int pgd_index (unsigned long) ;
 int pgd_val (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_val (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;
 int set_pgd (int *,int ) ;
 int set_pmd (int *,int ) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static void machine_kexec_page_table_set_one(
 pgd_t *pgd, pmd_t *pmd, pte_t *pte,
 unsigned long vaddr, unsigned long paddr)
{
 pud_t *pud;

 pgd += pgd_index(vaddr);




 pud = pud_offset(pgd, vaddr);
 pmd = pmd_offset(pud, vaddr);
 if (!(pmd_val(*pmd) & _PAGE_PRESENT))
  set_pmd(pmd, __pmd(__pa(pte) | _PAGE_TABLE));
 pte = pte_offset_kernel(pmd, vaddr);
 set_pte(pte, pfn_pte(paddr >> PAGE_SHIFT, PAGE_KERNEL_EXEC));
}
