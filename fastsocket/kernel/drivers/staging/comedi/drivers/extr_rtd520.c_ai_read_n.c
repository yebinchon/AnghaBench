
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int dummy; } ;
typedef int s16 ;
struct TYPE_4__ {int cur_chan; } ;
struct TYPE_3__ {scalar_t__ aiCount; int chanBipolar; } ;


 scalar_t__ CHAN_ARRAY_TEST (int ,int ) ;
 int DPRINTK (char*,int,int) ;
 int FS_ADC_NOT_EMPTY ;
 int RtdAdcFifoGet (struct comedi_device*) ;
 int RtdFifoStatus (struct comedi_device*) ;
 int comedi_buf_put (TYPE_2__*,short) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int ai_read_n(struct comedi_device *dev, struct comedi_subdevice *s,
       int count)
{
 int ii;

 for (ii = 0; ii < count; ii++) {
  short sample;
  s16 d;

  if (0 == devpriv->aiCount) {
   d = RtdAdcFifoGet(dev);
   continue;
  }







  d = RtdAdcFifoGet(dev);

  d = d >> 3;
  if (CHAN_ARRAY_TEST(devpriv->chanBipolar, s->async->cur_chan)) {
   sample = d + 2048;
  } else {
   sample = d;
  }
  if (!comedi_buf_put(s->async, sample))
   return -1;

  if (devpriv->aiCount > 0)
   devpriv->aiCount--;
 }
 return 0;
}
