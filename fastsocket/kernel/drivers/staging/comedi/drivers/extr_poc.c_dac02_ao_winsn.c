
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; scalar_t__ private; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAC02_LSB (int) ;
 scalar_t__ DAC02_MSB (int) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dac02_ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int temp;
 int chan;
 int output;

 chan = CR_CHAN(insn->chanspec);
 ((unsigned int *)dev->private)[chan] = data[0];
 output = data[0];





 temp = (output << 4) & 0xf0;
 outb(temp, dev->iobase + DAC02_LSB(chan));
 temp = (output >> 4) & 0xff;
 outb(temp, dev->iobase + DAC02_MSB(chan));

 return 1;
}
