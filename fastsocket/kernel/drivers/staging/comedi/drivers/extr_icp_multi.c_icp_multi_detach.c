
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ private; scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ card; scalar_t__ io_addr; scalar_t__ valid; } ;


 int PCI_VENDOR_ID_ICP ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int icp_multi_reset (struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int pci_card_free (scalar_t__) ;
 int pci_card_list_cleanup (int ) ;
 scalar_t__ pci_list_builded ;

__attribute__((used)) static int icp_multi_detach(struct comedi_device *dev)
{

 if (dev->private)
  if (devpriv->valid)
   icp_multi_reset(dev);

 if (dev->irq)
  free_irq(dev->irq, dev);

 if (dev->private && devpriv->io_addr)
  iounmap(devpriv->io_addr);

 if (dev->private && devpriv->card)
  pci_card_free(devpriv->card);

 if (--pci_list_builded == 0)
  pci_card_list_cleanup(PCI_VENDOR_ID_ICP);

 return 0;
}
