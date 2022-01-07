
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int minor; } ;
struct TYPE_4__ {scalar_t__ pci_dev; } ;
struct TYPE_3__ {scalar_t__ have_dio; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_2__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int pci230_detach(struct comedi_device *dev)
{
 printk("comedi%d: amplc_pci230: remove\n", dev->minor);

 if (dev->subdevices && thisboard->have_dio)

  subdev_8255_cleanup(dev, dev->subdevices + 2);

 if (dev->irq)
  free_irq(dev->irq, dev);

 if (devpriv) {
  if (devpriv->pci_dev) {
   if (dev->iobase) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }
 }

 return 0;
}
