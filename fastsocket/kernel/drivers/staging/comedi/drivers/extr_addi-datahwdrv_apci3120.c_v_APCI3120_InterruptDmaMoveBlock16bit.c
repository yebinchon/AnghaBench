
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int ui_AiActualScan; unsigned int ui_AiScanLength; } ;
struct TYPE_3__ {unsigned int cur_chan; } ;


 int cfc_write_array_to_buffer (struct comedi_subdevice*,short*,unsigned int) ;
 TYPE_2__* devpriv ;

void v_APCI3120_InterruptDmaMoveBlock16bit(struct comedi_device *dev,
 struct comedi_subdevice *s, short *dma_buffer, unsigned int num_samples)
{
 devpriv->ui_AiActualScan +=
  (s->async->cur_chan + num_samples) / devpriv->ui_AiScanLength;
 s->async->cur_chan += num_samples;
 s->async->cur_chan %= devpriv->ui_AiScanLength;

 cfc_write_array_to_buffer(s, dma_buffer, num_samples * sizeof(short));
}
