
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int _PAGE_HASHPTE ;
 int _PAGE_PRESENT ;
 int __pgprot (int) ;
 int init_mm ;
 int pfn_pte (int,int ) ;
 int pgd_offset_k (unsigned long) ;
 int * pmd_offset (int ,unsigned long) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int pte_val (int ) ;
 int pud_offset (int ,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

int map_page(unsigned long va, phys_addr_t pa, int flags)
{
 pmd_t *pd;
 pte_t *pg;
 int err = -ENOMEM;


 pd = pmd_offset(pud_offset(pgd_offset_k(va), va), va);

 pg = pte_alloc_kernel(pd, va);
 if (pg != 0) {
  err = 0;



  BUG_ON((pte_val(*pg) & (_PAGE_PRESENT | _PAGE_HASHPTE)) &&
         flags);
  set_pte_at(&init_mm, va, pg, pfn_pte(pa >> PAGE_SHIFT,
           __pgprot(flags)));
 }
 return err;
}
