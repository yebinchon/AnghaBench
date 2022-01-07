
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ subdevices; int minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ got_regions; scalar_t__ plx; scalar_t__ daq; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int daqboard2000_detach(struct comedi_device *dev)
{
 printk("comedi%d: daqboard2000: remove\n", dev->minor);

 if (dev->subdevices)
  subdev_8255_cleanup(dev, dev->subdevices + 2);

 if (dev->irq) {
  free_irq(dev->irq, dev);
 }
 if (devpriv) {
  if (devpriv->daq)
   iounmap(devpriv->daq);
  if (devpriv->plx)
   iounmap(devpriv->plx);
  if (devpriv->pci_dev) {
   if (devpriv->got_regions) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }
 }
 return 0;
}
