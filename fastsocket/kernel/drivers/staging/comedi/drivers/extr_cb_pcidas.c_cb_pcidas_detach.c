
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ subdevices; scalar_t__ irq; int minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ s5933_config; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 int INTCSR_INBOX_INTR_STATUS ;
 int comedi_pci_disable (scalar_t__) ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int pci_dev_put (scalar_t__) ;
 int printk (char*,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int cb_pcidas_detach(struct comedi_device *dev)
{
 printk("comedi%d: cb_pcidas: remove\n", dev->minor);

 if (devpriv) {
  if (devpriv->s5933_config) {

   outl(INTCSR_INBOX_INTR_STATUS,
        devpriv->s5933_config + AMCC_OP_REG_INTCSR);




  }
 }
 if (dev->irq)
  free_irq(dev->irq, dev);
 if (dev->subdevices)
  subdev_8255_cleanup(dev, dev->subdevices + 2);
 if (devpriv && devpriv->pci_dev) {
  if (devpriv->s5933_config) {
   comedi_pci_disable(devpriv->pci_dev);
  }
  pci_dev_put(devpriv->pci_dev);
 }

 return 0;
}
