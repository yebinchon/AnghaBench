
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int minor; scalar_t__ subdevices; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ dac; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int cb_pcidda_detach(struct comedi_device *dev)
{



 if (devpriv) {
  if (devpriv->pci_dev) {
   if (devpriv->dac) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }
 }

 if (dev->subdevices) {
  subdev_8255_cleanup(dev, dev->subdevices + 1);
  subdev_8255_cleanup(dev, dev->subdevices + 2);
 }

 printk("comedi%d: cb_pcidda: remove\n", dev->minor);

 return 0;
}
