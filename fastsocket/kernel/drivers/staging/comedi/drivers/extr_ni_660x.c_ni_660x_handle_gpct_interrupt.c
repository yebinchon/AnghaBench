
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
 int ni_660x_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_tio_handle_interrupt (int ,struct comedi_subdevice*) ;
 int subdev_to_counter (struct comedi_subdevice*) ;

__attribute__((used)) static void ni_660x_handle_gpct_interrupt(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 ni_tio_handle_interrupt(subdev_to_counter(s), s);
 if (s->async->events) {
  if (s->async->events & (COMEDI_CB_EOA | COMEDI_CB_ERROR |
     COMEDI_CB_OVERFLOW)) {
   ni_660x_cancel(dev, s);
  }
  comedi_event(dev, s);
 }
}
