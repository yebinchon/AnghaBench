
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pci_device; scalar_t__ plx_regbase_size; scalar_t__ plx_regbase; scalar_t__ me_regbase; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* dev_private ;
 int iounmap (scalar_t__) ;
 int me_reset (struct comedi_device*) ;
 int pci_dev_put (scalar_t__) ;

__attribute__((used)) static int me_detach(struct comedi_device *dev)
{
 if (dev_private) {
  if (dev_private->me_regbase) {
   me_reset(dev);
   iounmap(dev_private->me_regbase);
  }
  if (dev_private->plx_regbase)
   iounmap(dev_private->plx_regbase);
  if (dev_private->pci_device) {
   if (dev_private->plx_regbase_size)
    comedi_pci_disable(dev_private->pci_device);

   pci_dev_put(dev_private->pci_device);
  }
 }
 return 0;
}
