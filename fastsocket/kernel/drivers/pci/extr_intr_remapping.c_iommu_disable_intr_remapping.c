
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {int register_lock; scalar_t__ reg; int gcmd; int ecap; } ;


 scalar_t__ DMAR_GCMD_REG ;
 scalar_t__ DMAR_GSTS_REG ;
 int DMA_GCMD_IRE ;
 int DMA_GSTS_IRES ;
 int IOMMU_WAIT_OP (struct intel_iommu*,scalar_t__,int ,int,int) ;
 int dmar_readq (scalar_t__) ;
 int ecap_ir_support (int ) ;
 int qi_global_iec (struct intel_iommu*) ;
 int readl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void iommu_disable_intr_remapping(struct intel_iommu *iommu)
{
 unsigned long flags;
 u32 sts;

 if (!ecap_ir_support(iommu->ecap))
  return;





 qi_global_iec(iommu);

 spin_lock_irqsave(&iommu->register_lock, flags);

 sts = dmar_readq(iommu->reg + DMAR_GSTS_REG);
 if (!(sts & DMA_GSTS_IRES))
  goto end;

 iommu->gcmd &= ~DMA_GCMD_IRE;
 writel(iommu->gcmd, iommu->reg + DMAR_GCMD_REG);

 IOMMU_WAIT_OP(iommu, DMAR_GSTS_REG,
        readl, !(sts & DMA_GSTS_IRES), sts);

end:
 spin_unlock_irqrestore(&iommu->register_lock, flags);
}
