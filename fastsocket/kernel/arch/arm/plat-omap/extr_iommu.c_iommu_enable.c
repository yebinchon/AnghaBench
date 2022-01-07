
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu {int clk; } ;
struct TYPE_2__ {int (* enable ) (struct iommu*) ;} ;


 int EINVAL ;
 TYPE_1__* arch_iommu ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int stub1 (struct iommu*) ;

__attribute__((used)) static int iommu_enable(struct iommu *obj)
{
 int err;

 if (!obj)
  return -EINVAL;

 clk_enable(obj->clk);

 err = arch_iommu->enable(obj);

 clk_disable(obj->clk);
 return err;
}
