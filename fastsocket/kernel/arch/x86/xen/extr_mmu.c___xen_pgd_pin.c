
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int MMUEXT_PIN_L3_TABLE ;
 int MMUEXT_PIN_L4_TABLE ;
 int PFN_DOWN (int ) ;
 int PT_PGD ;
 int PT_PMD ;
 int TASK_SIZE ;
 int USER_LIMIT ;
 int __pa (int *) ;
 scalar_t__ __xen_pgd_walk (struct mm_struct*,int *,int (*) (struct mm_struct*,int ,int ),int ) ;
 int kmap_flush_unused () ;
 size_t pgd_index (int ) ;
 int pgd_page (int ) ;
 int virt_to_page (int *) ;
 int xen_do_pin (int ,int ) ;
 int * xen_get_user_pgd (int *) ;
 int xen_mc_batch () ;
 int xen_mc_issue (int ) ;
 int xen_pin_page (struct mm_struct*,int ,int ) ;

__attribute__((used)) static void __xen_pgd_pin(struct mm_struct *mm, pgd_t *pgd)
{
 xen_mc_batch();

 if (__xen_pgd_walk(mm, pgd, xen_pin_page, USER_LIMIT)) {

  xen_mc_issue(0);

  kmap_flush_unused();

  xen_mc_batch();
 }
 xen_do_pin(MMUEXT_PIN_L3_TABLE, PFN_DOWN(__pa(pgd)));

 xen_mc_issue(0);
}
