
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int register_lock; scalar_t__ reg; } ;


 scalar_t__ DMAR_FECTL_REG ;
 struct intel_iommu* get_irq_data (unsigned int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

void dmar_msi_unmask(unsigned int irq)
{
 struct intel_iommu *iommu = get_irq_data(irq);
 unsigned long flag;


 spin_lock_irqsave(&iommu->register_lock, flag);
 writel(0, iommu->reg + DMAR_FECTL_REG);

 readl(iommu->reg + DMAR_FECTL_REG);
 spin_unlock_irqrestore(&iommu->register_lock, flag);
}
