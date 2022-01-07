
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int pfn_pte (unsigned long,int ) ;
 int * pgd_offset (int *,unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 int * pte_alloc_map (int *,int *,int *,unsigned long) ;
 int pte_unmap (int *) ;
 int * pud_alloc (int *,int *,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;
 int tboot_mm ;

__attribute__((used)) static int map_tboot_page(unsigned long vaddr, unsigned long pfn,
     pgprot_t prot)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 pgd = pgd_offset(&tboot_mm, vaddr);
 pud = pud_alloc(&tboot_mm, pgd, vaddr);
 if (!pud)
  return -1;
 pmd = pmd_alloc(&tboot_mm, pud, vaddr);
 if (!pmd)
  return -1;
 pte = pte_alloc_map(&tboot_mm, ((void*)0), pmd, vaddr);
 if (!pte)
  return -1;
 set_pte_at(&tboot_mm, vaddr, pte, pfn_pte(pfn, prot));
 pte_unmap(pte);
 return 0;
}
