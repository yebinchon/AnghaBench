
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int minor; scalar_t__ subdevices; } ;
struct TYPE_4__ {scalar_t__ attached_successfully; scalar_t__ pci_dev; scalar_t__ registers; scalar_t__ attached_to_8255; } ;
struct TYPE_3__ {int name; } ;


 int comedi_pci_disable (scalar_t__) ;
 TYPE_2__* devpriv ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int detach(struct comedi_device *dev)
{
 if (devpriv) {

  if (dev->subdevices && devpriv->attached_to_8255) {

   subdev_8255_cleanup(dev, dev->subdevices + 2);
   devpriv->attached_to_8255 = 0;
  }

  if (devpriv->pci_dev) {
   if (devpriv->registers) {
    comedi_pci_disable(devpriv->pci_dev);
   }
   pci_dev_put(devpriv->pci_dev);
  }

  if (devpriv->attached_successfully && thisboard)
   printk("comedi%d: %s: detached\n", dev->minor,
          thisboard->name);

 }

 return 0;
}
