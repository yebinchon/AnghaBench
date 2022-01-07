
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int* ao_readback; scalar_t__* dac_coding; } ;


 int CR_CHAN (int ) ;
 scalar_t__ RTI802_DATAHIGH ;
 scalar_t__ RTI802_DATALOW ;
 scalar_t__ RTI802_SELECT ;
 scalar_t__ dac_2comp ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int rti802_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int i, d;
 int chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++) {
  d = devpriv->ao_readback[chan] = data[i];
  if (devpriv->dac_coding[chan] == dac_2comp)
   d ^= 0x800;
  outb(chan, dev->iobase + RTI802_SELECT);
  outb(d & 0xff, dev->iobase + RTI802_DATALOW);
  outb(d >> 8, dev->iobase + RTI802_DATAHIGH);
 }
 return i;
}
