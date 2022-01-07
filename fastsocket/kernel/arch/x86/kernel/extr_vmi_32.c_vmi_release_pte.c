
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* release_page ) (unsigned long,int ) ;} ;


 int VMI_PAGE_L1 ;
 int stub1 (unsigned long,int ) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_release_pte(unsigned long pfn)
{
 vmi_ops.release_page(pfn, VMI_PAGE_L1);
}
