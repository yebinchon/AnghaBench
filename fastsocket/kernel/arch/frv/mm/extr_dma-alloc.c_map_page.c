
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int ENOMEM ;
 unsigned long PAGE_MASK ;
 int mk_pte_phys (unsigned long,int ) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;
 int set_pte (int *,int ) ;

__attribute__((used)) static int map_page(unsigned long va, unsigned long pa, pgprot_t prot)
{
 pgd_t *pge;
 pud_t *pue;
 pmd_t *pme;
 pte_t *pte;
 int err = -ENOMEM;


 pge = pgd_offset_k(va);
 pue = pud_offset(pge, va);
 pme = pmd_offset(pue, va);


 pte = pte_alloc_kernel(pme, va);
 if (pte != 0) {
  err = 0;
  set_pte(pte, mk_pte_phys(pa & PAGE_MASK, prot));
 }

 return err;
}
