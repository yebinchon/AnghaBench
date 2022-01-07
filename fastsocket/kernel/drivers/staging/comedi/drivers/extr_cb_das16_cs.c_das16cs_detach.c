
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ irq; int minor; } ;


 int free_irq (scalar_t__,struct comedi_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int das16cs_detach(struct comedi_device *dev)
{
 printk("comedi%d: das16cs: remove\n", dev->minor);

 if (dev->irq) {
  free_irq(dev->irq, dev);
 }

 return 0;
}
