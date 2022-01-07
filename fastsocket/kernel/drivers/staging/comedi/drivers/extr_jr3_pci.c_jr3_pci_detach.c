
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jr3_pci_dev_private {int n_channels; scalar_t__ pci_dev; scalar_t__ pci_enabled; scalar_t__ iobase; int timer; } ;
struct comedi_device {TYPE_1__* subdevices; int minor; struct jr3_pci_dev_private* private; } ;
struct TYPE_2__ {int private; } ;


 int comedi_pci_disable (scalar_t__) ;
 int del_timer_sync (int *) ;
 int iounmap (void*) ;
 int kfree (int ) ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;

__attribute__((used)) static int jr3_pci_detach(struct comedi_device *dev)
{
 int i;
 struct jr3_pci_dev_private *devpriv = dev->private;

 printk("comedi%d: jr3_pci: remove\n", dev->minor);
 if (devpriv) {
  del_timer_sync(&devpriv->timer);

  if (dev->subdevices) {
   for (i = 0; i < devpriv->n_channels; i++) {
    kfree(dev->subdevices[i].private);
   }
  }

  if (devpriv->iobase) {
   iounmap((void *)devpriv->iobase);
  }
  if (devpriv->pci_enabled) {
   comedi_pci_disable(devpriv->pci_dev);
  }

  if (devpriv->pci_dev) {
   pci_dev_put(devpriv->pci_dev);
  }
 }
 return 0;
}
