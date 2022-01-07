
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; scalar_t__ private; int minor; } ;
struct TYPE_2__ {scalar_t__ pcidev; scalar_t__ valid; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int pci1723_reset (struct comedi_device*) ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;

__attribute__((used)) static int pci1723_detach(struct comedi_device *dev)
{
 printk("comedi%d: pci1723: remove\n", dev->minor);

 if (dev->private) {
  if (devpriv->valid)
   pci1723_reset(dev);

  if (devpriv->pcidev) {
   if (dev->iobase) {
    comedi_pci_disable(devpriv->pcidev);
   }
   pci_dev_put(devpriv->pcidev);
  }
 }

 return 0;
}
