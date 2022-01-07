
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
typedef int pgd_t ;
struct TYPE_2__ {int (* release_page ) (unsigned long,int ) ;} ;


 unsigned long PAGE_SHIFT ;
 int VMI_PAGE_L2 ;
 unsigned long __pa (int *) ;
 int stub1 (unsigned long,int ) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_pgd_free(struct mm_struct *mm, pgd_t *pgd)
{
 unsigned long pfn = __pa(pgd) >> PAGE_SHIFT;

 vmi_ops.release_page(pfn, VMI_PAGE_L2);
}
