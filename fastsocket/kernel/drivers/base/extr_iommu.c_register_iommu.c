
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_ops {int dummy; } ;


 int BUG () ;
 struct iommu_ops* iommu_ops ;

void register_iommu(struct iommu_ops *ops)
{
 if (iommu_ops)
  BUG();

 iommu_ops = ops;
}
