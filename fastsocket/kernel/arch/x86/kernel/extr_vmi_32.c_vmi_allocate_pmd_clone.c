
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* allocate_page ) (unsigned long,int,unsigned long,unsigned long,unsigned long) ;} ;


 int VMI_PAGE_CLONE ;
 int VMI_PAGE_L2 ;
 int stub1 (unsigned long,int,unsigned long,unsigned long,unsigned long) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_allocate_pmd_clone(unsigned long pfn, unsigned long clonepfn, unsigned long start, unsigned long count)
{
 vmi_ops.allocate_page(pfn, VMI_PAGE_L2 | VMI_PAGE_CLONE, clonepfn, start, count);
}
