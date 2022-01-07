
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ irq; } ;


 int DAS6402_SIZE ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int das6402_detach(struct comedi_device *dev)
{
 if (dev->irq)
  free_irq(dev->irq, dev);
 if (dev->iobase)
  release_region(dev->iobase, DAS6402_SIZE);

 return 0;
}
