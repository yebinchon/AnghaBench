
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int DT2801_IOSIZE ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int dt2801_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  release_region(dev->iobase, DT2801_IOSIZE);

 return 0;
}
