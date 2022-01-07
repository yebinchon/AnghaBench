
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct comedi_subdevice {int * private; } ;
struct comedi_device {int n_subdevices; scalar_t__ iobase; struct comedi_subdevice* subdevices; scalar_t__ private; } ;
struct TYPE_14__ {TYPE_4__* prev; TYPE_6__* next; scalar_t__ pcidev; scalar_t__ valid; } ;
struct TYPE_13__ {TYPE_4__* prev; } ;
struct TYPE_12__ {TYPE_3__* sdio; TYPE_2__* sdo; TYPE_1__* sdi; } ;
struct TYPE_11__ {TYPE_6__* next; } ;
struct TYPE_10__ {int regs; } ;
struct TYPE_9__ {scalar_t__ chans; } ;
struct TYPE_8__ {scalar_t__ chans; } ;


 int MAX_DIO_SUBDEVG ;
 int MAX_DI_SUBDEVS ;
 int MAX_DO_SUBDEVS ;
 int comedi_pci_disable (scalar_t__) ;
 TYPE_7__* devpriv ;
 int pci_dev_put (scalar_t__) ;
 int pci_dio_reset (struct comedi_device*) ;
 TYPE_6__* pci_priv ;
 int subdev_8255_cleanup (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_5__* this_board ;

__attribute__((used)) static int pci_dio_detach(struct comedi_device *dev)
{
 int i, j;
 struct comedi_subdevice *s;
 int subdev;

 if (dev->private) {
  if (devpriv->valid) {
   pci_dio_reset(dev);
  }



  subdev = 0;
  for (i = 0; i < MAX_DI_SUBDEVS; i++) {
   if (this_board->sdi[i].chans) {
    subdev++;
   }
  }
  for (i = 0; i < MAX_DO_SUBDEVS; i++) {
   if (this_board->sdo[i].chans) {
    subdev++;
   }
  }
  for (i = 0; i < MAX_DIO_SUBDEVG; i++) {
   for (j = 0; j < this_board->sdio[i].regs; j++) {
    s = dev->subdevices + subdev;
    subdev_8255_cleanup(dev, s);
    subdev++;
   }
  }

  for (i = 0; i < dev->n_subdevices; i++) {
   s = dev->subdevices + i;
   s->private = ((void*)0);
  }

  if (devpriv->pcidev) {
   if (dev->iobase) {
    comedi_pci_disable(devpriv->pcidev);
   }
   pci_dev_put(devpriv->pcidev);
  }

  if (devpriv->prev) {
   devpriv->prev->next = devpriv->next;
  } else {
   pci_priv = devpriv->next;
  }
  if (devpriv->next) {
   devpriv->next->prev = devpriv->prev;
  }
 }

 return 0;
}
