
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS16_DIO ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int das16_do_wbits(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 unsigned int wbits;


 data[0] &= 0xf;
 wbits = s->state;

 wbits &= ~data[0];

 wbits |= data[0] & data[1];
 s->state = wbits;
 data[1] = wbits;

 outb(s->state, dev->iobase + DAS16_DIO);

 return 2;
}
