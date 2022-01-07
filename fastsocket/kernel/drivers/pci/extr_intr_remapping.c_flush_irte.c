
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_2_iommu {int irte_index; int sub_handle; int irte_mask; struct intel_iommu* iommu; } ;
struct intel_iommu {int dummy; } ;


 int irq_2_ir_lock ;
 int qi_flush_iec (struct intel_iommu*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct irq_2_iommu* valid_irq_2_iommu (int) ;

int flush_irte(int irq)
{
 int rc;
 int index;
 struct intel_iommu *iommu;
 struct irq_2_iommu *irq_iommu;
 unsigned long flags;

 spin_lock_irqsave(&irq_2_ir_lock, flags);
 irq_iommu = valid_irq_2_iommu(irq);
 if (!irq_iommu) {
  spin_unlock_irqrestore(&irq_2_ir_lock, flags);
  return -1;
 }

 iommu = irq_iommu->iommu;

 index = irq_iommu->irte_index + irq_iommu->sub_handle;

 rc = qi_flush_iec(iommu, index, irq_iommu->irte_mask);
 spin_unlock_irqrestore(&irq_2_ir_lock, flags);

 return rc;
}
