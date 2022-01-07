
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_2_iommu {int dummy; } ;


 struct irq_2_iommu* irq_2_iommuX ;
 unsigned int nr_irqs ;

__attribute__((used)) static struct irq_2_iommu *irq_2_iommu(unsigned int irq)
{
 if (irq < nr_irqs)
  return &irq_2_iommuX[irq];

 return ((void*)0);
}
