
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int __pgprot (int) ;
 int flush_HPTE (int ,unsigned long,int ) ;
 int init_mm ;
 scalar_t__ mem_init_done ;
 int pfn_pte (int,int ) ;
 int pgd_offset_k (unsigned long) ;
 int * pmd_offset (int ,unsigned long) ;
 int pmd_val (int ) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

int map_page(unsigned long va, phys_addr_t pa, int flags)
{
 pmd_t *pd;
 pte_t *pg;
 int err = -ENOMEM;


 pd = pmd_offset(pgd_offset_k(va), va);

 pg = pte_alloc_kernel(pd, va);


 if (pg != ((void*)0)) {
  err = 0;
  set_pte_at(&init_mm, va, pg, pfn_pte(pa >> PAGE_SHIFT,
    __pgprot(flags)));
  if (mem_init_done)
   flush_HPTE(0, va, pmd_val(*pd));


 }

 return err;
}
