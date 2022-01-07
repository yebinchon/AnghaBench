
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cr_regs {int dummy; } ;
struct TYPE_2__ {int (* cr_valid ) (struct cr_regs*) ;} ;


 int EINVAL ;
 TYPE_1__* arch_iommu ;
 int stub1 (struct cr_regs*) ;

__attribute__((used)) static inline int iotlb_cr_valid(struct cr_regs *cr)
{
 if (!cr)
  return -EINVAL;

 return arch_iommu->cr_valid(cr);
}
