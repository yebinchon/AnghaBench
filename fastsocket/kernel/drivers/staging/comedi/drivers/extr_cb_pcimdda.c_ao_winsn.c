
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int registers; unsigned int* ao_readback; } ;


 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int outb (char,unsigned long) ;

__attribute__((used)) static int ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 unsigned long offset = devpriv->registers + chan * 2;



 for (i = 0; i < insn->n; i++) {

  outb((char)(data[i] & 0x00ff), offset);





  outb((char)(data[i] >> 8 & 0x00ff), offset + 1);



  devpriv->ao_readback[chan] = data[i];
 }


 return i;
}
