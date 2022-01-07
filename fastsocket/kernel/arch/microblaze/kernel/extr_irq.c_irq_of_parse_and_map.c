
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_irq {unsigned int* specifier; } ;
struct device_node {int dummy; } ;


 unsigned int NO_IRQ ;
 scalar_t__ of_irq_map_one (struct device_node*,int,struct of_irq*) ;

unsigned int irq_of_parse_and_map(struct device_node *dev, int index)
{
 struct of_irq oirq;

 if (of_irq_map_one(dev, index, &oirq))
  return NO_IRQ;

 return oirq.specifier[0];
}
