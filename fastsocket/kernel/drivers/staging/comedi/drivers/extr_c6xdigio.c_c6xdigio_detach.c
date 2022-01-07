
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ irq; scalar_t__ iobase; int minor; } ;


 int C6XDIGIO_SIZE ;
 int c6xdigio_pnp_driver ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int pnp_unregister_driver (int *) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int c6xdigio_detach(struct comedi_device *dev)
{


 printk("comedi%d: c6xdigio: remove\n", dev->minor);

 if (dev->iobase) {
  release_region(dev->iobase, C6XDIGIO_SIZE);
 }
 if (dev->irq) {
  free_irq(dev->irq, dev);
 }
 pnp_unregister_driver(&c6xdigio_pnp_driver);

 return 0;
}
