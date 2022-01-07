
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int events; } ;


 unsigned int COMEDI_CB_EOA ;
 unsigned int COMEDI_CB_ERROR ;
 unsigned int COMEDI_CB_OVERFLOW ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;

unsigned int cfc_handle_events(struct comedi_device *dev,
          struct comedi_subdevice *subd)
{
 unsigned int events = subd->async->events;

 if (events == 0)
  return events;

 if (events & (COMEDI_CB_EOA | COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW))
  subd->cancel(dev, subd);

 comedi_event(dev, subd);

 return events;
}
