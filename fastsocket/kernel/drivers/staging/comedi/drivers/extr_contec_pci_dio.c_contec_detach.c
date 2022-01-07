
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; int minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;

__attribute__((used)) static int contec_detach(struct comedi_device *dev)
{
 printk("comedi%d: contec: remove\n", dev->minor);

 if (devpriv && devpriv->pci_dev) {
  if (dev->iobase) {
   comedi_pci_disable(devpriv->pci_dev);
  }
  pci_dev_put(devpriv->pci_dev);
 }

 return 0;
}
