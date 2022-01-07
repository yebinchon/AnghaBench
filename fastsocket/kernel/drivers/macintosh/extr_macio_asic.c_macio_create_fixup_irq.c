
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct macio_dev {int n_interrupts; TYPE_1__ ofdev; TYPE_2__* interrupt; } ;
struct TYPE_4__ {unsigned int start; int name; int flags; } ;


 int IORESOURCE_IRQ ;
 unsigned int NO_IRQ ;
 int dev_name (int *) ;
 unsigned int irq_create_mapping (int *,unsigned int) ;

__attribute__((used)) static void macio_create_fixup_irq(struct macio_dev *dev, int index,
       unsigned int line)
{
 unsigned int irq;

 irq = irq_create_mapping(((void*)0), line);
 if (irq != NO_IRQ) {
  dev->interrupt[index].start = irq;
  dev->interrupt[index].flags = IORESOURCE_IRQ;
  dev->interrupt[index].name = dev_name(&dev->ofdev.dev);
 }
 if (dev->n_interrupts <= index)
  dev->n_interrupts = index + 1;
}
