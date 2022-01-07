
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int down_write (int *) ;
 int flush_tlb () ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (struct mm_struct*,int) ;
 scalar_t__ pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,int) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,int,int **) ;
 scalar_t__ pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pte_wrprotect (int ) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,int) ;
 int set_pte (int *,int ) ;
 int split_huge_page_pmd (struct mm_struct*,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void mark_screen_rdonly(struct mm_struct *mm)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 spinlock_t *ptl;
 int i;

 down_write(&mm->mmap_sem);
 pgd = pgd_offset(mm, 0xA0000);
 if (pgd_none_or_clear_bad(pgd))
  goto out;
 pud = pud_offset(pgd, 0xA0000);
 if (pud_none_or_clear_bad(pud))
  goto out;
 pmd = pmd_offset(pud, 0xA0000);
 split_huge_page_pmd(mm, pmd);
 if (pmd_none_or_clear_bad(pmd))
  goto out;
 pte = pte_offset_map_lock(mm, pmd, 0xA0000, &ptl);
 for (i = 0; i < 32; i++) {
  if (pte_present(*pte))
   set_pte(pte, pte_wrprotect(*pte));
  pte++;
 }
 pte_unmap_unlock(pte, ptl);
out:
 up_write(&mm->mmap_sem);
 flush_tlb();
}
