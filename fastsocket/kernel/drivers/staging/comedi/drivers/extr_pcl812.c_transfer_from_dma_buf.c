
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ cur_chan; int events; } ;
struct TYPE_3__ {scalar_t__ ai_act_scan; scalar_t__ ai_scans; int ai_neverending; } ;


 int COMEDI_CB_EOA ;
 int comedi_buf_put (TYPE_2__*,short) ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 TYPE_1__* devpriv ;
 int pcl812_ai_cancel (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static void transfer_from_dma_buf(struct comedi_device *dev,
      struct comedi_subdevice *s, short *ptr,
      unsigned int bufptr, unsigned int len)
{
 unsigned int i;

 s->async->events = 0;
 for (i = len; i; i--) {
  comedi_buf_put(s->async, ptr[bufptr++]);

  if (s->async->cur_chan == 0) {
   devpriv->ai_act_scan++;
   if (!devpriv->ai_neverending)
    if (devpriv->ai_act_scan >= devpriv->ai_scans) {
     pcl812_ai_cancel(dev, s);
     s->async->events |= COMEDI_CB_EOA;
     break;
    }
  }
 }

 comedi_event(dev, s);
}
