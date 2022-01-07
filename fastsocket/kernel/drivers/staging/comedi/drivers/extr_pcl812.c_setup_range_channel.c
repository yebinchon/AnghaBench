
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned char range_correction; unsigned char old_chan_reg; unsigned char old_gain_reg; int max_812_ai_mode0_rangewait; scalar_t__ use_diff; scalar_t__ use_MPC; } ;


 unsigned char CR_CHAN (unsigned int) ;
 unsigned char CR_RANGE (unsigned int) ;
 scalar_t__ PCL812_GAIN ;
 scalar_t__ PCL812_MUX ;
 TYPE_1__* devpriv ;
 int outb (unsigned char,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static void setup_range_channel(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int rangechan, char wait)
{
 unsigned char chan_reg = CR_CHAN(rangechan);
 unsigned char gain_reg = CR_RANGE(rangechan) + devpriv->range_correction;

 if ((chan_reg == devpriv->old_chan_reg)
     && (gain_reg == devpriv->old_gain_reg))
  return;

 devpriv->old_chan_reg = chan_reg;
 devpriv->old_gain_reg = gain_reg;

 if (devpriv->use_MPC) {
  if (devpriv->use_diff) {
   chan_reg = chan_reg | 0x30;
  } else {
   if (chan_reg & 0x80) {
    chan_reg = chan_reg | 0x20;
   } else {
    chan_reg = chan_reg | 0x10;
   }
  }
 }

 outb(chan_reg, dev->iobase + PCL812_MUX);
 outb(gain_reg, dev->iobase + PCL812_GAIN);

 if (wait) {
  udelay(devpriv->max_812_ai_mode0_rangewait);
 }
}
