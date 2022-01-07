
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; int minor; } ;


 int DT2817_SIZE ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int dt2817_detach(struct comedi_device *dev)
{
 printk("comedi%d: dt2817: remove\n", dev->minor);

 if (dev->iobase)
  release_region(dev->iobase, DT2817_SIZE);

 return 0;
}
