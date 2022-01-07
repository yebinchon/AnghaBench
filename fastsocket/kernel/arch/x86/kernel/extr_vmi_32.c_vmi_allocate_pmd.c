
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {int (* allocate_page ) (unsigned long,int ,int ,int ,int ) ;} ;


 int VMI_PAGE_L2 ;
 int stub1 (unsigned long,int ,int ,int ,int ) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_allocate_pmd(struct mm_struct *mm, unsigned long pfn)
{





 vmi_ops.allocate_page(pfn, VMI_PAGE_L2, 0, 0, 0);
}
