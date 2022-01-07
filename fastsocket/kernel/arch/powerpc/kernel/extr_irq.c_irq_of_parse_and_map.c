
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_irq {int size; int specifier; int controller; } ;
struct device_node {int dummy; } ;


 unsigned int NO_IRQ ;
 unsigned int irq_create_of_mapping (int ,int ,int ) ;
 scalar_t__ of_irq_map_one (struct device_node*,int,struct of_irq*) ;

unsigned int irq_of_parse_and_map(struct device_node *dev, int index)
{
 struct of_irq oirq;

 if (of_irq_map_one(dev, index, &oirq))
  return NO_IRQ;

 return irq_create_of_mapping(oirq.controller, oirq.specifier,
         oirq.size);
}
