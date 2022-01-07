
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ BADR0; scalar_t__ BADR4; scalar_t__ BADR3; scalar_t__ BADR2; scalar_t__ BADR1; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_detach(struct comedi_device *dev)
{
 printk("comedi%d: cb_pcimdas: remove\n", dev->minor);
 if (dev->irq)
  free_irq(dev->irq, dev);
 if (devpriv) {
  if (devpriv->pci_dev) {
   if (devpriv->BADR0) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }
 }

 return 0;
}
