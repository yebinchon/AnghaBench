
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* ao_readback; int simultaneous_xfer_mode; } ;


 int CR_CHAN (int ) ;
 int LSB (unsigned int) ;
 int LSB_PORT (int) ;
 int MSB (unsigned int) ;
 int MSB_PORT (int) ;
 TYPE_1__* devpriv ;
 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static int ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);



 for (i = 0; i < insn->n; ++i) {






  outb(LSB(data[i]), LSB_PORT(chan));

  outb(MSB(data[i]), MSB_PORT(chan));


  devpriv->ao_readback[chan] = data[i];

  if (!devpriv->simultaneous_xfer_mode)
   inb(LSB_PORT(chan));
 }


 return i;
}
