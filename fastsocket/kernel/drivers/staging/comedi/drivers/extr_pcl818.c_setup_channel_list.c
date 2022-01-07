
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int act_chanlist_len; size_t* act_chanlist; scalar_t__ act_chanlist_pos; } ;


 size_t CR_CHAN (unsigned int) ;
 int CR_RANGE (unsigned int) ;
 scalar_t__ PCL818_MUX ;
 scalar_t__ PCL818_RANGE ;
 TYPE_1__* devpriv ;
 int* muxonechan ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void setup_channel_list(struct comedi_device *dev,
          struct comedi_subdevice *s,
          unsigned int *chanlist, unsigned int n_chan,
          unsigned int seglen)
{
 int i;

 devpriv->act_chanlist_len = seglen;
 devpriv->act_chanlist_pos = 0;

 for (i = 0; i < seglen; i++) {
  devpriv->act_chanlist[i] = CR_CHAN(chanlist[i]);
  outb(muxonechan[CR_CHAN(chanlist[i])], dev->iobase + PCL818_MUX);
  outb(CR_RANGE(chanlist[i]), dev->iobase + PCL818_RANGE);
 }

 udelay(1);


 outb(devpriv->act_chanlist[0] | (devpriv->act_chanlist[seglen -
              1] << 4),
      dev->iobase + PCL818_MUX);
}
