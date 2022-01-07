
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
 scalar_t__ MULTIQ3_CONTROL ;
 int MULTIQ3_CONTROL_MUST ;
 scalar_t__ MULTIQ3_DAC_DATA ;
 int MULTIQ3_DA_LOAD ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int multiq3_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++) {
  outw(MULTIQ3_CONTROL_MUST | MULTIQ3_DA_LOAD | chan,
       dev->iobase + MULTIQ3_CONTROL);
  outw(data[i], dev->iobase + MULTIQ3_DAC_DATA);
  outw(MULTIQ3_CONTROL_MUST, dev->iobase + MULTIQ3_CONTROL);

  devpriv->ao_readback[chan] = data[i];
 }

 return i;
}
