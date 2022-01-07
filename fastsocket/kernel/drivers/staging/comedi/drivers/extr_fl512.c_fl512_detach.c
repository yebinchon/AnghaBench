
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; scalar_t__ iobase; } ;


 int FL512_SIZE ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int fl512_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  release_region(dev->iobase, FL512_SIZE);
 printk("comedi%d: fl512: dummy i detach\n", dev->minor);
 return 0;
}
