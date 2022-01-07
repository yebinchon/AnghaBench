
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ attached; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_BLOCK ;
 int COMEDI_CB_EOS ;
 int IRQ_RETVAL (int) ;
 int comedi_buf_put (TYPE_1__*,int ) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int pc236_intr_check (struct comedi_device*) ;

__attribute__((used)) static irqreturn_t pc236_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->subdevices + 1;
 int handled;

 handled = pc236_intr_check(dev);
 if (dev->attached && handled) {
  comedi_buf_put(s->async, 0);
  s->async->events |= COMEDI_CB_BLOCK | COMEDI_CB_EOS;
  comedi_event(dev, s);
 }
 return IRQ_RETVAL(handled);
}
