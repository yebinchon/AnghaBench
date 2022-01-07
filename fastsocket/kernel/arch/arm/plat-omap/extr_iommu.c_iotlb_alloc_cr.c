
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iotlb_entry {int dummy; } ;
struct iommu {int dummy; } ;
struct cr_regs {int dummy; } ;
struct TYPE_2__ {struct cr_regs* (* alloc_cr ) (struct iommu*,struct iotlb_entry*) ;} ;


 TYPE_1__* arch_iommu ;
 struct cr_regs* stub1 (struct iommu*,struct iotlb_entry*) ;

__attribute__((used)) static inline struct cr_regs *iotlb_alloc_cr(struct iommu *obj,
          struct iotlb_entry *e)
{
 if (!e)
  return ((void*)0);

 return arch_iommu->alloc_cr(obj, e);
}
