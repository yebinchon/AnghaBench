
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ subdevices; scalar_t__ iobase; int minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int adl_pci7296_detach(struct comedi_device *dev)
{
 printk("comedi%d: pci7432: remove\n", dev->minor);

 if (devpriv && devpriv->pci_dev) {
  if (dev->iobase) {
   comedi_pci_disable(devpriv->pci_dev);
  }
  pci_dev_put(devpriv->pci_dev);
 }

 if (dev->subdevices) {
  subdev_8255_cleanup(dev, dev->subdevices + 0);
  subdev_8255_cleanup(dev, dev->subdevices + 1);
  subdev_8255_cleanup(dev, dev->subdevices + 2);
  subdev_8255_cleanup(dev, dev->subdevices + 3);

 }

 return 0;
}
