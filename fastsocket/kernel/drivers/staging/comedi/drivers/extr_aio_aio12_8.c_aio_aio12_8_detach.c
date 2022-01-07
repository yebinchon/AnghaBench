
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; int * subdevices; } ;


 int release_region (scalar_t__,int) ;
 int subdev_8255_cleanup (struct comedi_device*,int *) ;

__attribute__((used)) static int aio_aio12_8_detach(struct comedi_device *dev)
{
 subdev_8255_cleanup(dev, &dev->subdevices[2]);
 if (dev->iobase)
  release_region(dev->iobase, 24);
 return 0;
}
