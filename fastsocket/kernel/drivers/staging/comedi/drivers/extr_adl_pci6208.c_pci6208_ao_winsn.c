
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned long* ao_readback; } ;


 unsigned short CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int inw (scalar_t__) ;
 int outw (unsigned long,scalar_t__) ;

__attribute__((used)) static int pci6208_ao_winsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int i = 0, Data_Read;
 unsigned short chan = CR_CHAN(insn->chanspec);
 unsigned long invert = 1 << (16 - 1);
 unsigned long out_value;


 for (i = 0; i < insn->n; i++) {
  out_value = data[i] ^ invert;

  do {
   Data_Read = (inw(dev->iobase) & 1);
  } while (Data_Read);
  outw(out_value, dev->iobase + (0x02 * chan));
  devpriv->ao_readback[chan] = out_value;
 }


 return i;
}
