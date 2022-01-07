
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PARPORT_B ;
 int inb (scalar_t__) ;

__attribute__((used)) static int parport_insn_b(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {


 }

 data[1] = (inb(dev->iobase + PARPORT_B) >> 3);

 return 2;
}
