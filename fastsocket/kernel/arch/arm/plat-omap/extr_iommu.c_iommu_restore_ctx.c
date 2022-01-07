
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu {int dummy; } ;
struct TYPE_2__ {int (* restore_ctx ) (struct iommu*) ;} ;


 TYPE_1__* arch_iommu ;
 int stub1 (struct iommu*) ;

void iommu_restore_ctx(struct iommu *obj)
{
 arch_iommu->restore_ctx(obj);
}
