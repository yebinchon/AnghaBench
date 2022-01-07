
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; int minor; } ;
struct TYPE_2__ {int driver_name; } ;


 int IOSIZE ;
 TYPE_1__ driver ;
 int printk (char*,int ,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int pcmda12_detach(struct comedi_device *dev)
{
 printk("comedi%d: %s: remove\n", dev->minor, driver.driver_name);
 if (dev->iobase)
  release_region(dev->iobase, IOSIZE);
 return 0;
}
