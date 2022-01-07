
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int DT2815_SIZE ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void dt2815_free_resources(struct comedi_device *dev)
{
 if (dev->iobase)
  release_region(dev->iobase, DT2815_SIZE);
}
