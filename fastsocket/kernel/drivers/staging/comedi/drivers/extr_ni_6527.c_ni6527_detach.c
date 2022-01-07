
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 scalar_t__ Master_Interrupt_Control ;
 TYPE_2__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int mite_unsetup (TYPE_1__*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni6527_detach(struct comedi_device *dev)
{
 if (devpriv && devpriv->mite && devpriv->mite->daq_io_addr) {
  writeb(0x00,
         devpriv->mite->daq_io_addr + Master_Interrupt_Control);
 }

 if (dev->irq) {
  free_irq(dev->irq, dev);
 }

 if (devpriv && devpriv->mite) {
  mite_unsetup(devpriv->mite);
 }

 return 0;
}
