
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cr_regs {int dummy; } ;
struct TYPE_2__ {int (* cr_to_virt ) (struct cr_regs*) ;} ;


 TYPE_1__* arch_iommu ;
 int stub1 (struct cr_regs*) ;

u32 iotlb_cr_to_virt(struct cr_regs *cr)
{
 return arch_iommu->cr_to_virt(cr);
}
