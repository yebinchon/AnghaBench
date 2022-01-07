
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int COMEDI_CB_OVERFLOW ;





 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_ai_reset (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_ao_reset (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_cdio_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_gpct_cancel (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static void ni_event(struct comedi_device *dev, struct comedi_subdevice *s)
{
 if (s->
     async->events & (COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW |
        COMEDI_CB_EOA)) {
  switch (s - dev->subdevices) {
  case 132:
   ni_ai_reset(dev, s);
   break;
  case 131:
   ni_ao_reset(dev, s);
   break;
  case 129:
  case 128:
   ni_gpct_cancel(dev, s);
   break;
  case 130:
   ni_cdio_cancel(dev, s);
   break;
  default:
   break;
  }
 }
 comedi_event(dev, s);
}
