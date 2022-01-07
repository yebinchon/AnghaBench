
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pgd_t ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 int BUG_ON (int) ;
 unsigned long HPAGE_SIZE ;
 unsigned long PTRS_PER_PTE ;
 int page_count (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pud_clear (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int put_page (int ) ;
 int virt_to_page (int *) ;

int huge_pmd_unshare(struct mm_struct *mm, unsigned long *addr, pte_t *ptep)
{
 pgd_t *pgd = pgd_offset(mm, *addr);
 pud_t *pud = pud_offset(pgd, *addr);

 BUG_ON(page_count(virt_to_page(ptep)) == 0);
 if (page_count(virt_to_page(ptep)) == 1)
  return 0;

 pud_clear(pud);
 put_page(virt_to_page(ptep));
 *addr = ALIGN(*addr, HPAGE_SIZE * PTRS_PER_PTE) - HPAGE_SIZE;
 return 1;
}
