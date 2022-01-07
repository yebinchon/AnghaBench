
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_2_iommu {int dummy; } ;


 struct irq_2_iommu* irq_2_iommu (unsigned int) ;

__attribute__((used)) static struct irq_2_iommu *irq_2_iommu_alloc(unsigned int irq)
{
 return irq_2_iommu(irq);
}
