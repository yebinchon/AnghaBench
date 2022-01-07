
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef int pgd_t ;
typedef int mm ;
struct TYPE_2__ {scalar_t__ index; } ;


 int BUILD_BUG_ON (int) ;
 TYPE_1__* virt_to_page (int *) ;

__attribute__((used)) static void pgd_set_mm(pgd_t *pgd, struct mm_struct *mm)
{
 BUILD_BUG_ON(sizeof(virt_to_page(pgd)->index) < sizeof(mm));
 virt_to_page(pgd)->index = (pgoff_t)mm;
}
