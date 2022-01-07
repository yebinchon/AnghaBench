
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jr3_pci_subdev_private {int channel_no; int serial_no; } ;
struct jr3_pci_dev_private {int n_channels; } ;
struct comedi_device {TYPE_1__* subdevices; struct jr3_pci_dev_private* private; } ;
struct TYPE_2__ {struct jr3_pci_subdev_private* private; } ;


 int printk (char*,...) ;

__attribute__((used)) static void jr3_pci_open(struct comedi_device *dev)
{
 int i;
 struct jr3_pci_dev_private *devpriv = dev->private;

 printk("jr3_pci_open\n");
 for (i = 0; i < devpriv->n_channels; i++) {
  struct jr3_pci_subdev_private *p;

  p = dev->subdevices[i].private;
  if (p) {
   printk("serial: %p %d (%d)\n", p, p->serial_no,
          p->channel_no);
  }
 }
}
