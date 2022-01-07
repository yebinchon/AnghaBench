
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_2_iommu {scalar_t__ irte_mask; scalar_t__ sub_handle; scalar_t__ irte_index; int * iommu; } ;


 int clear_entries (struct irq_2_iommu*) ;
 int irq_2_ir_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct irq_2_iommu* valid_irq_2_iommu (int) ;

int free_irte(int irq)
{
 int rc = 0;
 struct irq_2_iommu *irq_iommu;
 unsigned long flags;

 spin_lock_irqsave(&irq_2_ir_lock, flags);
 irq_iommu = valid_irq_2_iommu(irq);
 if (!irq_iommu) {
  spin_unlock_irqrestore(&irq_2_ir_lock, flags);
  return -1;
 }

 rc = clear_entries(irq_iommu);

 irq_iommu->iommu = ((void*)0);
 irq_iommu->irte_index = 0;
 irq_iommu->sub_handle = 0;
 irq_iommu->irte_mask = 0;

 spin_unlock_irqrestore(&irq_2_ir_lock, flags);

 return rc;
}
