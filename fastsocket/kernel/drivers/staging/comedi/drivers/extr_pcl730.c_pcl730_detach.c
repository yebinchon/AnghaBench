
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; int minor; } ;
struct TYPE_2__ {int io_range; } ;


 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcl730_detach(struct comedi_device *dev)
{
 printk("comedi%d: pcl730: remove\n", dev->minor);

 if (dev->iobase)
  release_region(dev->iobase, this_board->io_range);

 return 0;
}
