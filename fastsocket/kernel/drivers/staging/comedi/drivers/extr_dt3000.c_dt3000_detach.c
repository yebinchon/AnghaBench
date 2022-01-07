
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ io_addr; scalar_t__ pci_dev; scalar_t__ phys_addr; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int pci_dev_put (scalar_t__) ;

__attribute__((used)) static int dt3000_detach(struct comedi_device *dev)
{
 if (dev->irq)
  free_irq(dev->irq, dev);

 if (devpriv) {
  if (devpriv->pci_dev) {
   if (devpriv->phys_addr) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }
  if (devpriv->io_addr)
   iounmap(devpriv->io_addr);
 }


 return 0;
}
