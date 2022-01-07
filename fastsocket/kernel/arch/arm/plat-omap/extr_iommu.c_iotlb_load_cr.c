
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu {int dummy; } ;
struct cr_regs {int dummy; } ;
struct TYPE_2__ {int (* tlb_load_cr ) (struct iommu*,struct cr_regs*) ;} ;


 int MMU_FLUSH_ENTRY ;
 int MMU_LD_TLB ;
 TYPE_1__* arch_iommu ;
 int iommu_write_reg (struct iommu*,int,int ) ;
 int stub1 (struct iommu*,struct cr_regs*) ;

__attribute__((used)) static void iotlb_load_cr(struct iommu *obj, struct cr_regs *cr)
{
 arch_iommu->tlb_load_cr(obj, cr);

 iommu_write_reg(obj, 1, MMU_FLUSH_ENTRY);
 iommu_write_reg(obj, 1, MMU_LD_TLB);
}
