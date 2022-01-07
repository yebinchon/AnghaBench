
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {int register_lock; scalar_t__ reg; } ;


 scalar_t__ DMAR_PMEN_REG ;
 int DMA_PMEN_EPM ;
 int DMA_PMEN_PRS ;
 int IOMMU_WAIT_OP (struct intel_iommu*,scalar_t__,int (*) (scalar_t__),int,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void iommu_disable_protect_mem_regions(struct intel_iommu *iommu)
{
 u32 pmen;
 unsigned long flags;

 spin_lock_irqsave(&iommu->register_lock, flags);
 pmen = readl(iommu->reg + DMAR_PMEN_REG);
 pmen &= ~DMA_PMEN_EPM;
 writel(pmen, iommu->reg + DMAR_PMEN_REG);


 IOMMU_WAIT_OP(iommu, DMAR_PMEN_REG,
  readl, !(pmen & DMA_PMEN_PRS), pmen);

 spin_unlock_irqrestore(&iommu->register_lock, flags);
}
