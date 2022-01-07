
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; int flags; } ;
struct of_irq {int* specifier; } ;
struct device_node {int dummy; } ;


 int IORESOURCE_IRQ ;
 int NO_IRQ ;
 int of_irq_map_one (struct device_node*,int,struct of_irq*) ;
 int pr_debug (char*,int) ;

int of_irq_to_resource(struct device_node *dev, int index, struct resource *r)
{
 struct of_irq out_irq;
 int irq;
 int res;

 res = of_irq_map_one(dev, index, &out_irq);


 if (res) {
  pr_debug("IRQ not found... code = %d", res);
  return NO_IRQ;
 }

 irq = out_irq.specifier[0];

 pr_debug("IRQ found = %d", irq);



 if (r && irq != NO_IRQ) {
  r->start = r->end = irq;
  r->flags = IORESOURCE_IRQ;
 }

 return irq;
}
