
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct comedi_device*) ;
 int mio_common_detach (struct comedi_device*) ;

__attribute__((used)) static int mio_cs_detach(struct comedi_device *dev)
{
 mio_common_detach(dev);



 if (dev->irq) {
  free_irq(dev->irq, dev);
 }

 return 0;
}
