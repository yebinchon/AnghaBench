
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * valid_irq_2_iommu (int) ;

int irq_remapped(int irq)
{
 return valid_irq_2_iommu(irq) != ((void*)0);
}
