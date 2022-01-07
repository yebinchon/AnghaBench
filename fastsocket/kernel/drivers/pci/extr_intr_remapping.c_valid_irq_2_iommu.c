
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_2_iommu {int iommu; } ;


 struct irq_2_iommu* irq_2_iommu (unsigned int) ;

__attribute__((used)) static struct irq_2_iommu *valid_irq_2_iommu(unsigned int irq)
{
 struct irq_2_iommu *irq_iommu;

 irq_iommu = irq_2_iommu(irq);

 if (!irq_iommu)
  return ((void*)0);

 if (!irq_iommu->iommu)
  return ((void*)0);

 return irq_iommu;
}
