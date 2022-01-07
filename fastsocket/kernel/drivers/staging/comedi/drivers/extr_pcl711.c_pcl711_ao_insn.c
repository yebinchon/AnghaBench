
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 int CR_CHAN (int ) ;
 scalar_t__ PCL711_DA0_HI ;
 scalar_t__ PCL711_DA0_LO ;
 scalar_t__ PCL711_DA1_HI ;
 scalar_t__ PCL711_DA1_LO ;
 TYPE_1__* devpriv ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int pcl711_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int chan = CR_CHAN(insn->chanspec);

 for (n = 0; n < insn->n; n++) {
  outb((data[n] & 0xff),
       dev->iobase + (chan ? PCL711_DA1_LO : PCL711_DA0_LO));
  outb((data[n] >> 8),
       dev->iobase + (chan ? PCL711_DA1_HI : PCL711_DA0_HI));

  devpriv->ao_readback[chan] = data[n];
 }

 return n;
}
