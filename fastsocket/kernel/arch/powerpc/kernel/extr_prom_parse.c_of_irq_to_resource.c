
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; int flags; } ;
struct device_node {int dummy; } ;


 int IORESOURCE_IRQ ;
 int NO_IRQ ;
 int irq_of_parse_and_map (struct device_node*,int) ;

int of_irq_to_resource(struct device_node *dev, int index, struct resource *r)
{
 int irq = irq_of_parse_and_map(dev, index);



 if (r && irq != NO_IRQ) {
  r->start = r->end = irq;
  r->flags = IORESOURCE_IRQ;
 }

 return irq;
}
