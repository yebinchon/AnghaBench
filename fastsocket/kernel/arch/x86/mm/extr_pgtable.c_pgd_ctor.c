
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int KERNEL_PGD_BOUNDARY ;
 int KERNEL_PGD_PTRS ;
 int PAGETABLE_LEVELS ;
 int PAGE_SHIFT ;
 scalar_t__ SHARED_KERNEL_PMD ;
 int __pa (int *) ;
 int clone_pgd_range (int *,int *,int ) ;
 int paravirt_alloc_pmd_clone (int,int,int,int ) ;
 int pgd_list_add (int *) ;
 int pgd_set_mm (int *,struct mm_struct*) ;
 int * swapper_pg_dir ;

__attribute__((used)) static void pgd_ctor(struct mm_struct *mm, pgd_t *pgd)
{



 if (PAGETABLE_LEVELS == 2 ||
     (PAGETABLE_LEVELS == 3 && SHARED_KERNEL_PMD) ||
     PAGETABLE_LEVELS == 4) {
  clone_pgd_range(pgd + KERNEL_PGD_BOUNDARY,
    swapper_pg_dir + KERNEL_PGD_BOUNDARY,
    KERNEL_PGD_PTRS);
  paravirt_alloc_pmd_clone(__pa(pgd) >> PAGE_SHIFT,
      __pa(swapper_pg_dir) >> PAGE_SHIFT,
      KERNEL_PGD_BOUNDARY,
      KERNEL_PGD_PTRS);
 }


 if (!SHARED_KERNEL_PMD) {
  pgd_set_mm(pgd, mm);
  pgd_list_add(pgd);
 }
}
