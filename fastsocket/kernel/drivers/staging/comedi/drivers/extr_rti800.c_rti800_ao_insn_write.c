
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int* ao_readback; scalar_t__ dac0_coding; } ;


 int CR_CHAN (int ) ;
 scalar_t__ RTI800_DAC0HI ;
 scalar_t__ RTI800_DAC0LO ;
 scalar_t__ RTI800_DAC1HI ;
 scalar_t__ RTI800_DAC1LO ;
 scalar_t__ dac_2comp ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int rti800_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);
 int d;
 int i;

 for (i = 0; i < insn->n; i++) {
  devpriv->ao_readback[chan] = d = data[i];
  if (devpriv->dac0_coding == dac_2comp) {
   d ^= 0x800;
  }
  outb(d & 0xff,
       dev->iobase + (chan ? RTI800_DAC1LO : RTI800_DAC0LO));
  outb(d >> 8,
       dev->iobase + (chan ? RTI800_DAC1HI : RTI800_DAC0HI));
 }
 return i;
}
