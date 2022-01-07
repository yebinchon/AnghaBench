
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; int minor; } ;


 int PCL725_SIZE ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int pcl725_detach(struct comedi_device *dev)
{
 printk("comedi%d: pcl725: remove\n", dev->minor);

 if (dev->iobase)
  release_region(dev->iobase, PCL725_SIZE);

 return 0;
}
