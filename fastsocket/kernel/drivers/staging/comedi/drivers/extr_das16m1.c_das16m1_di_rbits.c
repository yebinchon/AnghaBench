
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS16M1_DIO ;
 int inb (scalar_t__) ;

__attribute__((used)) static int das16m1_di_rbits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned int bits;

 bits = inb(dev->iobase + DAS16M1_DIO) & 0xf;
 data[1] = bits;
 data[0] = 0;

 return 2;
}
