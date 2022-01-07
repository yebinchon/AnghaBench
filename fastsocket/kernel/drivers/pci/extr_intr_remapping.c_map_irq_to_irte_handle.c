
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct irq_2_iommu {int irte_index; int sub_handle; } ;


 int irq_2_ir_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct irq_2_iommu* valid_irq_2_iommu (int) ;

int map_irq_to_irte_handle(int irq, u16 *sub_handle)
{
 int index;
 struct irq_2_iommu *irq_iommu;
 unsigned long flags;

 spin_lock_irqsave(&irq_2_ir_lock, flags);
 irq_iommu = valid_irq_2_iommu(irq);
 if (!irq_iommu) {
  spin_unlock_irqrestore(&irq_2_ir_lock, flags);
  return -1;
 }

 *sub_handle = irq_iommu->sub_handle;
 index = irq_iommu->irte_index;
 spin_unlock_irqrestore(&irq_2_ir_lock, flags);
 return index;
}
