
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {unsigned int start; int name; int flags; } ;
struct TYPE_2__ {int dev; struct device_node* node; } ;
struct macio_dev {int n_interrupts; TYPE_1__ ofdev; struct resource* interrupt; } ;
struct device_node {int dummy; } ;


 int IORESOURCE_IRQ ;
 int MACIO_DEV_COUNT_IRQS ;
 unsigned int NO_IRQ ;
 int dev_name (int *) ;
 unsigned int irq_of_parse_and_map (struct device_node*,int ) ;
 scalar_t__ macio_resource_quirks (struct device_node*,struct resource*,int) ;
 int memset (struct resource*,int ,int) ;

__attribute__((used)) static void macio_setup_interrupts(struct macio_dev *dev)
{
 struct device_node *np = dev->ofdev.node;
 unsigned int irq;
 int i = 0, j = 0;

 for (;;) {
  struct resource *res;

  if (j >= MACIO_DEV_COUNT_IRQS)
   break;
  res = &dev->interrupt[j];
  irq = irq_of_parse_and_map(np, i++);
  if (irq == NO_IRQ)
   break;
  res->start = irq;
  res->flags = IORESOURCE_IRQ;
  res->name = dev_name(&dev->ofdev.dev);
  if (macio_resource_quirks(np, res, i - 1)) {
   memset(res, 0, sizeof(struct resource));
   continue;
  } else
   j++;
 }
 dev->n_interrupts = j;
}
