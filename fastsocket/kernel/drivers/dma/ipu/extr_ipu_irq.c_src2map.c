
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_irq_map {unsigned int source; } ;


 int CONFIG_MX3_IPU_IRQS ;
 struct ipu_irq_map* irq_map ;

__attribute__((used)) static struct ipu_irq_map *src2map(unsigned int src)
{
 int i;

 for (i = 0; i < CONFIG_MX3_IPU_IRQS; i++)
  if (irq_map[i].source == src)
   return irq_map + i;

 return ((void*)0);
}
