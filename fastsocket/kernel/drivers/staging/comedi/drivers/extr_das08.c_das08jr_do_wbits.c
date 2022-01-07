
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int do_bits; } ;


 scalar_t__ DAS08JR_DIO ;
 TYPE_1__* devpriv ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int das08jr_do_wbits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{

 devpriv->do_bits &= ~data[0];

 devpriv->do_bits |= data[0] & data[1];
 outb(devpriv->do_bits, dev->iobase + DAS08JR_DIO);

 data[1] = devpriv->do_bits;

 return 2;
}
