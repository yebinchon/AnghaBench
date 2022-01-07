
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iommu {int dummy; } ;
struct TYPE_2__ {int (* fault_isr ) (struct iommu*,int *) ;} ;


 TYPE_1__* arch_iommu ;
 int stub1 (struct iommu*,int *) ;

__attribute__((used)) static u32 iommu_report_fault(struct iommu *obj, u32 *da)
{
 return arch_iommu->fault_isr(obj, da);
}
