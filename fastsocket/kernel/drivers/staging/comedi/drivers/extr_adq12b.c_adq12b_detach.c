
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; scalar_t__ iobase; } ;


 int ADQ12B_SIZE ;
 int devpriv ;
 int kfree (int ) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int adq12b_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  release_region(dev->iobase, ADQ12B_SIZE);

 kfree(devpriv);

 printk("comedi%d: adq12b: removed\n", dev->minor);

 return 0;
}
