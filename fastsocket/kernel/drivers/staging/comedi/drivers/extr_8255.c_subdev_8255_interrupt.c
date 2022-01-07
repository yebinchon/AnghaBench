
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int events; } ;


 int CALLBACK_ARG ;
 int CALLBACK_FUNC (int ,scalar_t__,int ,int ) ;
 int COMEDI_CB_EOS ;
 scalar_t__ _8255_DATA ;
 int comedi_buf_put (TYPE_1__*,short) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;

void subdev_8255_interrupt(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 short d;

 d = CALLBACK_FUNC(0, _8255_DATA, 0, CALLBACK_ARG);
 d |= (CALLBACK_FUNC(0, _8255_DATA + 1, 0, CALLBACK_ARG) << 8);

 comedi_buf_put(s->async, d);
 s->async->events |= COMEDI_CB_EOS;

 comedi_event(dev, s);
}
