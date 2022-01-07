
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int COMEDI_CB_OVERFLOW ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_pcidio_cancel (struct comedi_device*,struct comedi_subdevice*) ;

void ni_pcidio_event(struct comedi_device *dev, struct comedi_subdevice *s)
{
 if (s->
     async->events & (COMEDI_CB_EOA | COMEDI_CB_ERROR |
        COMEDI_CB_OVERFLOW)) {
  ni_pcidio_cancel(dev, s);
 }
 comedi_event(dev, s);
}
