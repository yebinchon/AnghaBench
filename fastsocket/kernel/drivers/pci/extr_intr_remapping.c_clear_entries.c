
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int high; int low; } ;
struct irq_2_iommu {int sub_handle; int irte_index; int irte_mask; struct intel_iommu* iommu; } ;
struct intel_iommu {TYPE_1__* ir_table; } ;
struct TYPE_2__ {struct irte* base; } ;


 int qi_flush_iec (struct intel_iommu*,int,int) ;
 int set_64bit (unsigned long*,int ) ;

__attribute__((used)) static int clear_entries(struct irq_2_iommu *irq_iommu)
{
 struct irte *start, *entry, *end;
 struct intel_iommu *iommu;
 int index;

 if (irq_iommu->sub_handle)
  return 0;

 iommu = irq_iommu->iommu;
 index = irq_iommu->irte_index + irq_iommu->sub_handle;

 start = iommu->ir_table->base + index;
 end = start + (1 << irq_iommu->irte_mask);

 for (entry = start; entry < end; entry++) {
  set_64bit((unsigned long *)&entry->low, 0);
  set_64bit((unsigned long *)&entry->high, 0);
 }

 return qi_flush_iec(iommu, index, irq_iommu->irte_mask);
}
