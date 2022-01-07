
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int minor; scalar_t__ iobase; } ;
struct TYPE_2__ {int iosize; } ;


 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int poc_detach(struct comedi_device *dev)
{

 if (dev->iobase)
  release_region(dev->iobase, this_board->iosize);

 printk("comedi%d: dac02: remove\n", dev->minor);

 return 0;
}
