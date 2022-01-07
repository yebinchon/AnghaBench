
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int hwver; int ao_stop_spinlock; int state; } ;


 int AO_CMD_STARTED ;
 int EINVAL ;
 scalar_t__ PCI230P2_DACSWTRIG ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int inw (scalar_t__) ;
 int pci230_handle_ao_nofifo (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static int pci230_ao_inttrig_scan_begin(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int trig_num)
{
 unsigned long irqflags;

 if (trig_num != 0)
  return -EINVAL;

 spin_lock_irqsave(&devpriv->ao_stop_spinlock, irqflags);
 if (test_bit(AO_CMD_STARTED, &devpriv->state)) {

  if (devpriv->hwver < 2) {

   spin_unlock_irqrestore(&devpriv->ao_stop_spinlock,
            irqflags);
   pci230_handle_ao_nofifo(dev, s);
   comedi_event(dev, s);
  } else {


   inw(dev->iobase + PCI230P2_DACSWTRIG);
   spin_unlock_irqrestore(&devpriv->ao_stop_spinlock,
            irqflags);
  }


  udelay(8);
 }

 return 1;
}
