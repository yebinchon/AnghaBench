
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int high; int low; } ;
struct irq_2_iommu {int irte_index; int sub_handle; struct intel_iommu* iommu; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {struct irte* base; } ;


 int __iommu_flush_cache (struct intel_iommu*,struct irte*,int) ;
 int irq_2_ir_lock ;
 int qi_flush_iec (struct intel_iommu*,int,int ) ;
 int set_64bit (unsigned long*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct irq_2_iommu* valid_irq_2_iommu (int) ;

int modify_irte(int irq, struct irte *irte_modified)
{
 int rc;
 int index;
 struct irte *irte;
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
 irte = &iommu->ir_table->base[index];

 set_64bit((unsigned long *)&irte->low, irte_modified->low);
 set_64bit((unsigned long *)&irte->high, irte_modified->high);
 __iommu_flush_cache(iommu, irte, sizeof(*irte));

 rc = qi_flush_iec(iommu, index, 0);
 spin_unlock_irqrestore(&irq_2_ir_lock, flags);

 return rc;
}
