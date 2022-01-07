
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ PAGE_SIZE ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_unmap_unlock (int *,int *) ;
 int pte_update (struct mm_struct*,unsigned long,int *,int ,int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static void hpte_flush_range(struct mm_struct *mm, unsigned long addr,
        int npages)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 spinlock_t *ptl;

 pgd = pgd_offset(mm, addr);
 if (pgd_none(*pgd))
  return;
 pud = pud_offset(pgd, addr);
 if (pud_none(*pud))
  return;
 pmd = pmd_offset(pud, addr);
 if (pmd_none(*pmd))
  return;
 pte = pte_offset_map_lock(mm, pmd, addr, &ptl);
 arch_enter_lazy_mmu_mode();
 for (; npages > 0; --npages) {
  pte_update(mm, addr, pte, 0, 0);
  addr += PAGE_SIZE;
  ++pte;
 }
 arch_leave_lazy_mmu_mode();
 pte_unmap_unlock(pte - 1, ptl);
}
