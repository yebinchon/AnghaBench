
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ private; scalar_t__ irq; scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ pci_device; scalar_t__ is_valid; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* dev_private ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int pci9111_reset (struct comedi_device*) ;
 int pci_dev_put (scalar_t__) ;

__attribute__((used)) static int pci9111_detach(struct comedi_device *dev)
{


 if (dev->private != 0) {
  if (dev_private->is_valid)
   pci9111_reset(dev);

 }


 if (dev->irq != 0) {
  free_irq(dev->irq, dev);
 }

 if (dev_private != 0 && dev_private->pci_device != 0) {
  if (dev->iobase) {
   comedi_pci_disable(dev_private->pci_device);
  }
  pci_dev_put(dev_private->pci_device);
 }

 return 0;
}
