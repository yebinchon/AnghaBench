
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__* ao_offset_msb; scalar_t__* ao_offset_lsb; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DAS08JR_AO_LSB (int) ;
 scalar_t__ DAS08JR_AO_MSB (int) ;
 scalar_t__ DAS08JR_DIO ;
 TYPE_1__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int das08jr_ao_winsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int n;
 int lsb, msb;
 int chan;

 lsb = data[0] & 0xff;
 msb = (data[0] >> 8) & 0xf;

 chan = CR_CHAN(insn->chanspec);

 for (n = 0; n < insn->n; n++) {




  outb(lsb, dev->iobase + DAS08JR_AO_LSB(chan));
  outb(msb, dev->iobase + DAS08JR_AO_MSB(chan));



  inb(dev->iobase + DAS08JR_DIO);
 }

 return n;
}
